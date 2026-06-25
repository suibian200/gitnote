<template>
  <div class="home-page">
    <div class="home-content">
      <!-- Left: Note List -->
      <div class="main-area">
        <!-- Filter Bar -->
        <div class="filter-bar">
          <div class="filter-left">
            <el-select v-model="tagFilter" placeholder="按标签筛选" clearable style="width: 150px" @change="handleFilterChange">
              <el-option v-for="tag in tags" :key="tag" :label="tag" :value="tag" />
            </el-select>
            <el-select v-model="sortOrder" style="width: 120px" @change="handleFilterChange">
              <el-option label="最新" value="latest" />
              <el-option label="最热" value="hottest" />
            </el-select>
          </div>
          <div class="filter-right">
            <span class="result-count">共 {{ total }} 篇笔记</span>
          </div>
        </div>

        <!-- Note Cards -->
        <div v-loading="loading" class="note-list">
          <NoteCard v-for="note in notes" :key="note.id" :note="note" />
          <el-empty v-if="!notes.length && !loading" description="暂无笔记" />
        </div>

        <!-- Pagination -->
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

      <!-- Right: Hot Area -->
      <div class="hot-area">
        <HotUsers :users="hotUsers" :loading="hotUsersLoading" />
        <HotNotes :notes="hotNotes" :loading="hotNotesLoading" />
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted, watch } from 'vue'
import { useRoute } from 'vue-router'
import { getNoteList } from '@/api/note'
import { getNoteTags } from '@/api/note'
import { getHotUsers, getHotNotes } from '@/api/rank'
import NoteCard from '@/components/NoteCard.vue'
import HotUsers from '@/components/HotUsers.vue'
import HotNotes from '@/components/HotNotes.vue'

const route = useRoute()

const notes = ref([])
const tags = ref([])
const total = ref(0)
const page = ref(1)
const size = ref(10)
const loading = ref(false)

const tagFilter = ref('')
const sortOrder = ref('latest')

const hotUsers = ref([])
const hotNotes = ref([])
const hotUsersLoading = ref(false)
const hotNotesLoading = ref(false)

async function fetchNotes() {
  loading.value = true
  try {
    const params = {
      page: page.value,
      size: size.value,
      sort: sortOrder.value
    }
    if (tagFilter.value) params.tag = tagFilter.value
    if (route.query.search) params.keyword = route.query.search

    const res = await getNoteList(params)
    notes.value = res.list || []
    total.value = res.total || 0
  } finally {
    loading.value = false
  }
}

async function fetchTags() {
  try {
    const res = await getNoteTags()
    tags.value = Array.isArray(res) ? res : (res.list || [])
  } catch { /* ignore */ }
}

async function fetchHotUsersData() {
  hotUsersLoading.value = true
  try {
    const res = await getHotUsers()
    hotUsers.value = Array.isArray(res) ? res : (res.list || [])
  } finally {
    hotUsersLoading.value = false
  }
}

async function fetchHotNotesData() {
  hotNotesLoading.value = true
  try {
    const res = await getHotNotes()
    hotNotes.value = Array.isArray(res) ? res : (res.list || [])
  } finally {
    hotNotesLoading.value = false
  }
}

function handleFilterChange() {
  page.value = 1
  fetchNotes()
}

function handleSizeChange(val) {
  size.value = val
  page.value = 1
  fetchNotes()
}

function handlePageChange(val) {
  page.value = val
  fetchNotes()
}

watch(() => route.query.search, () => {
  page.value = 1
  fetchNotes()
})

onMounted(() => {
  fetchNotes()
  fetchTags()
  fetchHotUsersData()
  fetchHotNotesData()
})
</script>

<style scoped>
.home-page {
  padding: 20px;
  height: 100%;
}
.home-content {
  display: flex;
  gap: 20px;
  height: 100%;
}
.main-area {
  flex: 1;
  min-width: 0;
}
.hot-area {
  width: 280px;
  flex-shrink: 0;
  height: calc(100vh - 60px - 40px);
  overflow-y: auto;
  position: sticky;
  top: 0;
}
.filter-bar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 20px;
  background: #fff;
  padding: 12px 16px;
  border-radius: 8px;
  border: 1px solid #ebeef5;
}
.filter-left {
  display: flex;
  gap: 12px;
}
.filter-right {
  font-size: 14px;
  color: #909399;
}
.note-list {
  display: flex;
  flex-direction: column;
  gap: 16px;
}
.pagination-wrap {
  display: flex;
  justify-content: center;
  padding: 24px 0;
}
.result-count {
  font-size: 13px;
}
</style>
