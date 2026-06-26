<template>
  <div class="detail-page">
    <div v-loading="loading" class="detail-container">
      <template v-if="note">
        <div class="detail-header">
          <h1 class="detail-title">{{ note.title }}</h1>
          <div class="detail-meta">
            <div class="author-row">
              <el-avatar :size="32" :src="note.authorAvatar" @click="goToProfile">
                {{ note.authorName?.charAt(0)?.toUpperCase() }}
              </el-avatar>
              <span class="author-name" @click="goToProfile">{{ note.authorName }}</span>
              <span class="publish-time">{{ formatTime(note.createTime) }}</span>
            </div>
            <div class="action-row" v-if="isAuthor">
              <el-button type="primary" size="small" :icon="Edit" @click="editNote">编辑</el-button>
              <el-button type="danger" size="small" :icon="Delete" @click="deleteNote">删除</el-button>
            </div>
          </div>
          <div class="detail-tags" v-if="note.tags && note.tags.length">
            <el-tag v-for="tag in note.tags" :key="tag" size="small">{{ tag }}</el-tag>
          </div>
        </div>

        <div class="detail-body markdown-body" v-html="renderedContent"></div>

        <div class="detail-footer">
          <el-button
            :type="note.isLiked ? 'warning' : 'default'"
            :icon="note.isLiked ? StarFilled : Star"
            @click="handleLike"
          >
            {{ note.isLiked ? '已点赞' : '点赞' }} {{ note.likeCount || 0 }}
          </el-button>
          <el-button
            :type="note.isFavorited ? 'warning' : 'default'"
            :icon="Star"
            @click="handleFavorite"
          >
            {{ note.isFavorited ? '已收藏' : '收藏' }}
          </el-button>
        </div>
      </template>
      <el-empty v-else-if="!loading" description="笔记不存在" />
    </div>
  </div>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { ElMessage, ElMessageBox } from 'element-plus'
import { Edit, Delete, Star, StarFilled } from '@element-plus/icons-vue'
import { getNoteDetail, likeNote, unlikeNote, deleteNote as deleteNoteApi } from '@/api/note'
import { useUserStore } from '@/stores/user'
import { renderMarkdown, formatTime } from '@/utils'
import 'highlight.js/styles/github.css'

const route = useRoute()
const router = useRouter()
const userStore = useUserStore()

const noteId = route.params.id
const loading = ref(true)
const note = ref(null)
const liked = ref(false)
const likeCount = ref(0)

const isAuthor = computed(() => {
  return note.value && String(note.value.authorId) === String(userStore.userInfo?.userId)
})

const renderedContent = computed(() => {
  return renderMarkdown(note.value?.content || '')
})

async function fetchDetail() {
  loading.value = true
  try {
    const res = await getNoteDetail(noteId)
    note.value = res
    liked.value = res.isLiked || false
    likeCount.value = res.likeCount || 0
  } finally {
    loading.value = false
  }
}

async function handleLike() {
  if (!note.value) return
  try {
    let res
    if (liked.value) {
      res = await unlikeNote(noteId)
    } else {
      res = await likeNote(noteId)
    }
    if (res && res.code) {
      ElMessage.warning(res.message || '\u64cd\u4f5c\u5931\u8d25')
      return
    }
    if (res && typeof res.liked === 'boolean') {
      liked.value = res.liked
      note.value.isLiked = res.liked
    }
    if (res && typeof res.totalLikes === 'number') {
      likeCount.value = res.totalLikes
      note.value.likeCount = res.totalLikes
    }
  } catch { /* handled by interceptor */ }
}

function handleFavorite() {
  ElMessage.info('收藏功能开发中')
}

function editNote() {
  router.push({ name: 'NoteEdit', params: { id: noteId } })
}

async function deleteNote() {
  try {
    await ElMessageBox.confirm('确定要删除这篇笔记吗？', '提示', {
      type: 'warning',
      confirmButtonText: '确定',
      cancelButtonText: '取消'
    })
    await deleteNoteApi(noteId)
    ElMessage.success('删除成功')
    router.push('/home')
  } catch (err) {
    if (err !== 'cancel') { /* ignore */ }
  }
}

function goToProfile() {
  if (note.value?.authorId) {
    router.push({ name: 'Profile', params: { userId: note.value.authorId } })
  }
}

onMounted(fetchDetail)
</script>

<style scoped>
.detail-page {
  padding: 24px;
  max-width: 860px;
  margin: 0 auto;
}
.detail-container {
  background: #fff;
  border: 1px solid #ebeef5;
  border-radius: 12px;
  padding: 40px;
  min-height: 400px;
}
.detail-header {
  margin-bottom: 32px;
  padding-bottom: 20px;
  border-bottom: 1px solid #ebeef5;
}
.detail-title {
  font-size: 28px;
  font-weight: 700;
  color: #303133;
  line-height: 1.3;
  margin-bottom: 16px;
}
.detail-meta {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 12px;
}
.author-row {
  display: flex;
  align-items: center;
  gap: 10px;
}
.author-name {
  font-size: 15px;
  font-weight: 500;
  color: #409eff;
  cursor: pointer;
}
.author-name:hover {
  color: #66b1ff;
}
.publish-time {
  font-size: 13px;
  color: #c0c4cc;
}
.action-row {
  display: flex;
  gap: 8px;
}
.detail-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 6px;
}
.detail-body {
  line-height: 1.8;
  min-height: 200px;
}
.detail-body :deep(h1),
.detail-body :deep(h2),
.detail-body :deep(h3) {
  margin-top: 24px;
  margin-bottom: 12px;
  font-weight: 600;
}
.detail-body :deep(p) {
  margin-bottom: 16px;
}
.detail-body :deep(pre) {
  background: #f6f8fa;
  border-radius: 6px;
  padding: 16px;
  overflow-x: auto;
  margin-bottom: 16px;
}
.detail-body :deep(code) {
  font-family: 'SFMono-Regular', Consolas, 'Liberation Mono', Menlo, monospace;
}
.detail-body :deep(img) {
  max-width: 100%;
  border-radius: 4px;
}
.detail-footer {
  margin-top: 32px;
  padding-top: 20px;
  border-top: 1px solid #ebeef5;
  display: flex;
  gap: 16px;
}
</style>
