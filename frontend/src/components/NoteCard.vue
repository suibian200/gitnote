<template>
  <div class="note-card" @click="goToDetail">
    <div class="card-header">
      <h3 class="card-title">{{ note.title }}</h3>
    </div>
    <p class="card-summary">{{ summary }}</p>
    <div class="card-tags" v-if="note.tags && note.tags.length">
      <el-tag
        v-for="tag in note.tags"
        :key="tag"
        size="small"
        class="tag-item"
        @click.stop
      >
        {{ tag }}
      </el-tag>
    </div>
    <div class="card-footer">
      <div class="author-info" @click.stop="goToProfile">
        <el-avatar :size="24" :src="note.authorAvatar">
          {{ note.authorName?.charAt(0)?.toUpperCase() }}
        </el-avatar>
        <span class="author-name">{{ note.authorName }}</span>
      </div>
      <div class="card-meta">
        <span class="meta-item">
          <el-icon><Clock /></el-icon>
          {{ formatTime(note.createTime) }}
        </span>
        <span class="meta-item like-btn" :class="{ liked: note.isLiked }" @click.stop="handleLike">
          <el-icon><StarFilled v-if="note.isLiked" /><Star v-else /></el-icon>
          {{ note.likeCount || 0 }}
        </span>
        <span class="meta-item">
          <el-icon><ChatDotSquare /></el-icon>
          {{ note.commentCount || 0 }}
        </span>
      </div>
    </div>
  </div>
</template>

<script setup>
import { computed } from 'vue'
import { useRouter } from 'vue-router'
import { Clock, Star, StarFilled, ChatDotSquare } from '@element-plus/icons-vue'
import { ElMessage } from 'element-plus'
import { likeNote, unlikeNote } from '@/api/note'
import { stripMarkdown, formatTime } from '@/utils'

const props = defineProps({
  note: { type: Object, required: true }
})

const router = useRouter()

const summary = computed(() => {
  const text = stripMarkdown(props.note.content || '')
  return text.length > 120 ? text.slice(0, 120) + '...' : text
})

async function handleLike(event) {
  event.stopPropagation()
  try {
    let res
    if (props.note.isLiked) {
      res = await unlikeNote(props.note.id)
    } else {
      res = await likeNote(props.note.id)
    }
    if (res && res.code) {
      ElMessage.warning(res.message || '\u64cd\u4f5c\u5931\u8d25')
      return
    }
    if (res && typeof res.liked === 'boolean') {
      props.note.isLiked = res.liked
    }
    if (res && typeof res.totalLikes === 'number') {
      props.note.likeCount = res.totalLikes
    }
  } catch {
    // handled by interceptor
  }
}

function goToDetail() {
  router.push({ name: 'NoteDetail', params: { id: props.note.id } })
}

function goToProfile() {
  router.push({ name: 'Profile', params: { userId: props.note.authorId } })
}
</script>

<style scoped>
.note-card {
  background: #fff;
  border-radius: 8px;
  padding: 20px;
  cursor: pointer;
  transition: box-shadow 0.3s, transform 0.2s;
  border: 1px solid #ebeef5;
}
.note-card:hover {
  box-shadow: 0 4px 16px rgba(0, 0, 0, 0.08);
  transform: translateY(-1px);
}
.card-header {
  margin-bottom: 8px;
}
.card-title {
  font-size: 18px;
  font-weight: 600;
  color: #303133;
  line-height: 1.4;
  display: -webkit-box;
  -webkit-line-clamp: 1;
  -webkit-box-orient: vertical;
  overflow: hidden;
}
.card-summary {
  font-size: 14px;
  color: #606266;
  line-height: 1.6;
  margin-bottom: 12px;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
  overflow: hidden;
}
.card-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 6px;
  margin-bottom: 12px;
}
.tag-item {
  cursor: pointer;
}
.card-footer {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.author-info {
  display: flex;
  align-items: center;
  gap: 8px;
  cursor: pointer;
  color: #606266;
}
.author-info:hover .author-name {
  color: #409eff;
}
.author-name {
  font-size: 13px;
  transition: color 0.2s;
}
.card-meta {
  display: flex;
  align-items: center;
  gap: 16px;
}
.meta-item {
  display: flex;
  align-items: center;
  gap: 4px;
  font-size: 13px;
  color: #909399;
}
.like-btn {
  cursor: pointer;
  transition: color 0.2s;
}
.like-btn:hover {
  color: #606266;
}
.like-btn.liked {
  color: #f7ba2a;
}
.like-btn.liked:hover {
  color: #e6a800;
}
</style>
