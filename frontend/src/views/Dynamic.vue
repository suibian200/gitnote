<template>
  <div class="dynamic-page">
    <div class="page-header">
      <h2 class="page-title">动态</h2>
      <span class="page-desc">关注用户近1天内发布的笔记</span>
    </div>

    <div v-loading="loading" class="dynamic-list">
      <div v-if="!notes.length && !loading" class="empty-state">
        <el-empty description="暂无新动态，快去关注更多用户吧" />
      </div>

      <div v-for="note in notes" :key="note.id" class="dynamic-card" @click="goToDetail(note.id)">
        <div class="dynamic-author">
          <el-avatar :size="28" :src="note.authorAvatar">
            {{ note.authorName?.charAt(0)?.toUpperCase() }}
          </el-avatar>
          <span class="author-name">{{ note.authorName }}</span>
          <span class="publish-time">{{ formatTime(note.createTime) }}</span>
        </div>
        <h3 class="dynamic-title">{{ note.title }}</h3>
        <p class="dynamic-summary">{{ summary(note) }}</p>
      </div>
    </div>

    <div class="pagination-wrap" v-if="total > 0">
      <el-pagination
        v-model:current-page="page"
        v-model:page-size="size"
        :page-sizes="[10, 20, 30]"
        :total="total"
        layout="total, sizes, prev, pager, next, jumper"
        background
        @size-change="handleSizeChange"
        @current-change="handlePageChange"
      />
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue'
import { useRouter } from 'vue-router'
import { getNoteDynamic } from '@/api/note'
import { stripMarkdown, formatTime } from '@/utils'

const router = useRouter()

const notes = ref([])
const total = ref(0)
const page = ref(1)
const size = ref(10)
const loading = ref(false)

async function fetchDynamic() {
  loading.value = true
  try {
    const res = await getNoteDynamic({ page: page.value, size: size.value })
    notes.value = res.list || []
    total.value = res.total || 0
  } finally {
    loading.value = false
  }
}

function summary(note) {
  const text = stripMarkdown(note.content || '')
  return text.length > 100 ? text.slice(0, 100) + '...' : text
}

function goToDetail(id) {
  router.push({ name: 'NoteDetail', params: { id } })
}

function handleSizeChange(val) {
  size.value = val
  page.value = 1
  fetchDynamic()
}

function handlePageChange(val) {
  page.value = val
  fetchDynamic()
}

onMounted(fetchDynamic)
</script>

<style scoped>
.dynamic-page {
  padding: 20px;
}
.page-header {
  margin-bottom: 20px;
  display: flex;
  align-items: baseline;
  gap: 12px;
}
.page-title {
  font-size: 22px;
  font-weight: 700;
  color: #303133;
}
.page-desc {
  font-size: 14px;
  color: #909399;
}
.dynamic-list {
  display: flex;
  flex-direction: column;
  gap: 12px;
}
.dynamic-card {
  background: #fff;
  border: 1px solid #ebeef5;
  border-radius: 8px;
  padding: 16px 20px;
  cursor: pointer;
  transition: box-shadow 0.3s, transform 0.2s;
}
.dynamic-card:hover {
  box-shadow: 0 4px 16px rgba(0, 0, 0, 0.08);
  transform: translateY(-1px);
}
.dynamic-author {
  display: flex;
  align-items: center;
  gap: 8px;
  margin-bottom: 8px;
}
.author-name {
  font-size: 13px;
  font-weight: 500;
  color: #606266;
}
.publish-time {
  font-size: 12px;
  color: #c0c4cc;
}
.dynamic-title {
  font-size: 16px;
  font-weight: 600;
  color: #303133;
  margin-bottom: 6px;
}
.dynamic-summary {
  font-size: 14px;
  color: #606266;
  line-height: 1.5;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
  overflow: hidden;
}
.empty-state {
  padding: 60px 0;
}
.pagination-wrap {
  display: flex;
  justify-content: center;
  padding: 24px 0;
}
</style>
