-- ============================================================================
-- ?????? · ????? DDL
-- ?????: MySQL 8.0+ (utf8mb4)
-- ============================================================================

CREATE DATABASE IF NOT EXISTS `db_notes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `db_notes`;


USE db_notes;

-- 1. 用户表
-- --------------------------
CREATE TABLE user (
  id              BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  username        VARCHAR(50)     NOT NULL                COMMENT '用户名, 登录用',
  password        VARCHAR(255)    NOT NULL                COMMENT '密码(BCrypt 哈希)',
  email           VARCHAR(100)    NOT NULL                COMMENT '邮箱',
  avatar          VARCHAR(500)    DEFAULT ''              COMMENT '头像 URL 或文件路径',
  bio             VARCHAR(200)    DEFAULT ''              COMMENT '个人简介',
  note_count      INT UNSIGNED    NOT NULL DEFAULT 0      COMMENT '作品数(冗余, 避免 COUNT)',
  follower_count  INT UNSIGNED    NOT NULL DEFAULT 0      COMMENT '粉丝数(冗余)',
  following_count INT UNSIGNED    NOT NULL DEFAULT 0      COMMENT '关注数(冗余)',
  total_likes     INT UNSIGNED    NOT NULL DEFAULT 0      COMMENT '获赞总数(冗余, 用于热门排行)',
  created_at      DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  updated_at      DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uk_username (username),
  UNIQUE KEY uk_email (email),
  KEY idx_total_likes (total_likes DESC),
  KEY idx_created_at (created_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户账号';

-- ----------------------------
-- 2. 笔记表
-- ----------------------------
CREATE TABLE note (
  id             BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '笔记ID',
  author_id      BIGINT UNSIGNED NOT NULL                COMMENT '作者ID',
  title          VARCHAR(200)    NOT NULL                COMMENT '笔记标题',
  content        LONGTEXT        NOT NULL                COMMENT 'Markdown 正文',
  like_count     INT UNSIGNED    NOT NULL DEFAULT 0      COMMENT '点赞数(冗余)',
  comment_count  INT UNSIGNED    NOT NULL DEFAULT 0      COMMENT '评论数(冗余, 前端已展示, 为未来预留)',
  favorite_count INT UNSIGNED    NOT NULL DEFAULT 0      COMMENT '收藏数(冗余)',
  is_deleted     TINYINT(1)      NOT NULL DEFAULT 0      COMMENT '软删除: 0-正常, 1-已删除',
  created_at     DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  updated_at     DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  KEY idx_author_id (author_id),
  KEY idx_created_at (created_at DESC),
  KEY idx_like_count (like_count DESC),
  FULLTEXT KEY ft_title_content (title, content) WITH PARSER ngram
    COMMENT '中文全文搜索索引(ngram 解析器)',
  CONSTRAINT fk_note_author FOREIGN KEY (author_id) REFERENCES user (id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='笔记正文';

-- ----------------------------
-- 3. 标签字典表
-- ----------------------------
CREATE TABLE tag (
  id         BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  name       VARCHAR(50)     NOT NULL                COMMENT '标签名称',
  created_at DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uk_name (name),
  KEY idx_name (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='标签字典';

-- ----------------------------
-- 4. 笔记-标签关联表 (多对多)
-- ----------------------------
CREATE TABLE note_tag (
  id         BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  note_id    BIGINT UNSIGNED NOT NULL,
  tag_id     BIGINT UNSIGNED NOT NULL,
  created_at DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uk_note_tag (note_id, tag_id),
  KEY idx_tag_id (tag_id),
  CONSTRAINT fk_nt_note FOREIGN KEY (note_id) REFERENCES note (id)
    ON DELETE CASCADE,
  CONSTRAINT fk_nt_tag  FOREIGN KEY (tag_id)  REFERENCES tag (id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='笔记-标签关联';

-- ----------------------------
-- 5. 用户关注表 (用户间多对多)
-- ----------------------------
CREATE TABLE user_follow (
  id          BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  follower_id BIGINT UNSIGNED NOT NULL COMMENT '关注者(主动方)',
  followee_id BIGINT UNSIGNED NOT NULL COMMENT '被关注者(被动方)',
  created_at  DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uk_follower_followee (follower_id, followee_id),
  KEY idx_followee_id (followee_id),
  CONSTRAINT fk_uf_follower FOREIGN KEY (follower_id) REFERENCES user (id)
    ON DELETE CASCADE,
  CONSTRAINT fk_uf_followee FOREIGN KEY (followee_id) REFERENCES user (id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户关注关系';

-- 关注动态查询:
--   SELECT n.* FROM note n
--   JOIN user_follow uf ON uf.followee_id = n.author_id
--   WHERE uf.follower_id = :currentUserId
--     AND n.created_at > DATE_SUB(NOW(), INTERVAL 7 DAY)
--     AND n.is_deleted = 0
--   ORDER BY n.created_at DESC;

-- ----------------------------
-- 6. 笔记点赞表
-- ----------------------------
CREATE TABLE note_like (
  id         BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  note_id    BIGINT UNSIGNED NOT NULL,
  user_id    BIGINT UNSIGNED NOT NULL,
  created_at DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uk_note_user (note_id, user_id),
  KEY idx_user_id (user_id),
  CONSTRAINT fk_nl_note FOREIGN KEY (note_id) REFERENCES note (id)
    ON DELETE CASCADE,
  CONSTRAINT fk_nl_user FOREIGN KEY (user_id) REFERENCES user (id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='笔记点赞';

-- 热门用户排行:
--   SELECT u.id, u.username, u.avatar, u.total_likes
--   FROM user u WHERE u.total_likes > 0
--   ORDER BY u.total_likes DESC LIMIT 10;

-- ----------------------------
-- 7. 笔记收藏表 (前端已有 isFavorited 字段+按钮UI, 功能预留)
-- ----------------------------
CREATE TABLE note_favorite (
  id         BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  note_id    BIGINT UNSIGNED NOT NULL,
  user_id    BIGINT UNSIGNED NOT NULL,
  created_at DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uk_note_user (note_id, user_id),
  KEY idx_user_id (user_id),
  CONSTRAINT fk_nf_note FOREIGN KEY (note_id) REFERENCES note (id)
    ON DELETE CASCADE,
  CONSTRAINT fk_nf_user FOREIGN KEY (user_id) REFERENCES user (id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='笔记收藏';

-- ============================================================================
-- 完整查询参考: 首页笔记列表(分页+标签过滤+排序+搜索)
-- ============================================================================
-- SELECT
--   n.id, n.title,
--   LEFT(n.content, 200) AS summary,
--   n.like_count, n.comment_count, n.created_at,
--   u.id   AS author_id,
--   u.username AS author_name,
--   u.avatar   AS author_avatar
-- FROM note n
-- JOIN user u ON u.id = n.author_id
-- WHERE n.is_deleted = 0
--   AND (:tag IS NULL OR EXISTS (
--     SELECT 1 FROM note_tag nt
--     JOIN tag t ON t.id = nt.tag_id
--     WHERE nt.note_id = n.id AND t.name = :tag
--   ))
--   AND (:keyword IS NULL
--     OR MATCH(n.title, n.content) AGAINST (:keyword IN BOOLEAN MODE))
-- ORDER BY
--   CASE WHEN :sort = 'hottest' THEN n.like_count ELSE 0 END DESC,
--   n.created_at DESC
-- LIMIT :size OFFSET :offset;

-- ============================================================================
-- 迁移指南: 当前文件存储 → SQL
-- ============================================================================
-- 1. 用户: data/notes/users/{userId}/avatar/avatar.jpg → user.avatar
-- 2. 笔记: data/notes/users/{userId}/notes/{title}.md →
--    INSERT INTO note (author_id, title, content, created_at)
--    其中 created_at 可从文件最后修改时间提取,
--    tags/like_count 等元数据需手动补全。
-- 3. 使用一个 Node.js/Python 脚本扫描目录, 逐条 INSERT,
--    迁移完成后归档原文件目录即可。
-- ============================================================================

