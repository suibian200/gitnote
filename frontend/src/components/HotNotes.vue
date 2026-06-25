<template>
  <div class="hot-notes">
    <h4 class="section-title">📈 热门笔记</h4>
    <div v-loading="loading" element-loading-background="transparent">
      <div v-if="!notes.length && !loading" class="empty-text">暂无数据</div>
      <div
        v-for="note in notes"
        :key="note.id"
        class="hot-note-item"
        @click="goToDetail(note.id)"
      >
        <div class="note-info">
          <span class="note-title">{{ note.title }}</span>
          <span class="note-author">{{ note.authorName }}</span>
        </div>
        <span class="note-likes">
          <el-icon><ThumbsUp /></el-icon>
          {{ note.likeCount || 0 }}
        </span>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ThumbsUp } from '@element-plus/icons-vue'
import { useRouter } from 'vue-router'

const props = defineProps({
  notes: { type: Array, default: () => [] },
  loading: { type: Boolean, default: false }
})

const router = useRouter()

function goToDetail(id) {
  const routeData = router.resolve({ name: 'NoteDetail', params: { id } })
  window.open(routeData.href, '_blank')
}
</script>

<style scoped>
.hot-notes {
  margin-bottom: 16px;
}
.section-title {
  font-size: 16px;
  font-weight: 600;
  color: #303133;
  margin-bottom: 12px;
  padding-bottom: 8px;
  border-bottom: 1px solid #ebeef5;
}
.hot-note-item {
  display: flex;
  align-items: center;
  gap: 10px;
  padding: 8px 8px;
  border-radius: 6px;
  cursor: pointer;
  transition: background 0.2s;
  margin-bottom: 4px;
}
.hot-note-item:hover {
  background: #f5f7fa;
}
.note-info {
  flex: 1;
  min-width: 0;
  display: flex;
  flex-direction: column;
  gap: 2px;
}
.note-title {
  font-size: 14px;
  font-weight: 500;
  color: #303133;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.note-author {
  font-size: 12px;
  color: #909399;
}
.note-likes {
  display: flex;
  align-items: center;
  gap: 4px;
  font-size: 13px;
  color: #909399;
  white-space: nowrap;
}
.empty-text {
  color: #c0c4cc;
  font-size: 13px;
  text-align: center;
  padding: 16px 0;
}
</style>
