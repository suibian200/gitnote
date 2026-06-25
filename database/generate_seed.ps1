<#
.SYNOPSIS
  从现有文件存储读取数据，生成 database/seed.sql INSERT 脚本，
  并将头像文件复制到 data/avatars/ 目录。
#>

$dataRoot  = "E:\JavaDamo\javaproject\note\data\notes\users"
$outputDir = "E:\JavaDamo\javaproject\note\database"
$avatarDir = "E:\JavaDamo\javaproject\note\data\avatars"

$outputFile = Join-Path $outputDir "seed.sql"
$rng = [System.Random]::new()
$sqlLines = [System.Collections.Generic.List[string]]::new()

$sqlLines.Add("-- ============================================================")
$sqlLines.Add("-- 笔记系统 · 初始数据种子 (seed.sql)")
$sqlLines.Add("-- 生成时间: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')")
$sqlLines.Add("-- 密码: '123456' 的 BCrypt 占位哈希，登录后建议修改")
$sqlLines.Add("-- ============================================================")
$sqlLines.Add("")
$sqlLines.Add("SET FOREIGN_KEY_CHECKS = 0;")
$sqlLines.Add("TRUNCATE TABLE note_favorite;")
$sqlLines.Add("TRUNCATE TABLE note_like;")
$sqlLines.Add("TRUNCATE TABLE user_follow;")
$sqlLines.Add("TRUNCATE TABLE note_tag;")
$sqlLines.Add("DELETE FROM tag;")
$sqlLines.Add("TRUNCATE TABLE note;")
$sqlLines.Add("DELETE FROM user;")
$sqlLines.Add("SET FOREIGN_KEY_CHECKS = 1;")
$sqlLines.Add("")

$placeholderHash = '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy'
$tagId = 0
$seenTags = @{}

$userDirs = Get-ChildItem -Directory $dataRoot | Sort-Object Name

$sqlLines.Add("-- ============================================================")
$sqlLines.Add("-- 1. 用户")
$sqlLines.Add("-- ============================================================")
$sqlLines.Add("")

foreach ($userDir in $userDirs) {
    $userId = $userDir.Name
    $notesDir = Join-Path $userDir.FullName "notes"
    $avatarDirSrc = Join-Path $userDir.FullName "avatar"

    $noteFiles = @()
    if (Test-Path $notesDir) { $noteFiles = Get-ChildItem $notesDir -Filter "*.md" -File }

    $hasAvatar = (Test-Path $avatarDirSrc) -and (@(Get-ChildItem $avatarDirSrc -File).Count -gt 0)
    $avatar = ""
    if ($hasAvatar) {
        $af = Get-ChildItem $avatarDirSrc -File | Select-Object -First 1
        $ext = $af.Extension
        $newName = "${userId}_$($rng.Next(100000,999999))${ext}"
        Copy-Item $af.FullName (Join-Path $avatarDir $newName) -Force
        $avatar = "avatars/$newName"
        Write-Host "[OK] Avatar: $($af.Name) -> $newName"
    }

    $username = "user${userId}"
    $email = "${username}@example.com"
    $noteCount = $noteFiles.Count

    $sqlLines.Add("INSERT INTO `user` (`id`, `username`, `password`, `email`, `avatar`, `note_count`, `created_at`)")
    $sqlLines.Add("VALUES ($userId, '$username', '$placeholderHash', '$email', '$avatar', $noteCount, NOW());")
}

$sqlLines.Add("")

$sqlLines.Add("-- ============================================================")
$sqlLines.Add("-- 2. 笔记 & 标签")
$sqlLines.Add("-- ============================================================")
$sqlLines.Add("")

foreach ($userDir in $userDirs) {
    $userId = $userDir.Name
    $notesDir = Join-Path $userDir.FullName "notes"
    if (-not (Test-Path $notesDir)) { continue }

    $noteFiles = Get-ChildItem $notesDir -Filter "*.md" -File
    foreach ($noteFile in $noteFiles) {
        $title = [System.IO.Path]::GetFileNameWithoutExtension($noteFile.Name)
        $content = Get-Content $noteFile.FullName -Raw -ErrorAction SilentlyContinue
        if (-not $content) { $content = "" }

        $titleEsc = $title.Replace("'", "''")
        $contEsc  = $content.Replace("'", "''")

        $sqlLines.Add("INSERT INTO `note` (`author_id`, `title`, `content`, `created_at`)")
        $sqlLines.Add("VALUES ($userId, '$titleEsc', '$contEsc', NOW());")
        $sqlLines.Add("SET @last_note_id = LAST_INSERT_ID();")
        $sqlLines.Add("")
    }
}

$sqlLines | Out-File $outputFile -Encoding utf8
Write-Host ""
Write-Host "============================================="
Write-Host "[DONE] Generated: $outputFile"
Write-Host "============================================="
