<template>
  <div class="profile-page">
    <div v-loading="loading" class="profile-content">
      <!-- Profile Header -->
      <div class="profile-header">
        <el-avatar :size="80" :src="profileInfo.avatar">
          {{ profileInfo.username?.charAt(0)?.toUpperCase() }}
        </el-avatar>
        <div class="profile-info">
          <div class="profile-name-row">
            <h2 class="profile-name">{{ profileInfo.username }}</h2>
            <el-button
              v-if="!isOwnProfile"
              :type="isFollowing ? 'default' : 'primary'"
              :plain="isFollowing"
              size="small"
              @click="handleFollow"
            >
              {{ isFollowing ? '已关注' : '关注' }}
            </el-button>
          </div>
          <p class="profile-bio">{{ profileInfo.bio || '这个人很懒，什么都没写...' }}</p>
        </div>
        <div class="profile-stats">
          <div class="stat-item">
            <span class="stat-value">{{ profileInfo.noteCount || 0 }}</span>
            <span class="stat-label">作品</span>
          </div>
          <div class="stat-item stat-clickable" @click="showFollowing = true">
            <span class="stat-value">{{ profileInfo.followingCount || 0 }}</span>
            <span class="stat-label">关注</span>
          </div>
          <div class="stat-item stat-clickable" @click="showFollowers = true">
            <span class="stat-value">{{ profileInfo.followerCount || 0 }}</span>
            <span class="stat-label">粉丝</span>
          </div>
          <div class="stat-item">
            <span class="stat-value">{{ profileInfo.totalLikes || 0 }}</span>
            <span class="stat-label">获赞</span>
          </div>
        </div>
      </div>

      <!-- Notes List -->
      <h3 class="section-title">
        {{ isOwnProfile ? '我的笔记' : '他的笔记' }}
        <span class="note-count">({{ total }} 篇)</span>
      </h3>

      <div class="notes-grid">
        <div v-for="note in notes" :key="note.id" class="profile-note-card" @click="goToDetail(note.id)">
          <div class="note-header">
            <h4 class="note-title">{{ note.title }}</h4>
            <div class="note-actions" v-if="isOwnProfile" @click.stop>
              <el-button text type="primary" size="small" @click="editNote(note.id)">
                <el-icon><Edit /></el-icon>
              </el-button>
              <el-button text type="danger" size="small" @click="deleteNote(note.id)">
                <el-icon><Delete /></el-icon>
              </el-button>
            </div>
          </div>
          <p class="note-summary">{{ summary(note) }}</p>
          <div class="note-tags" v-if="note.tags && note.tags.length">
            <el-tag v-for="tag in note.tags" :key="tag" size="small">{{ tag }}</el-tag>
          </div>
          <div class="note-footer">
            <span class="note-time">{{ formatTime(note.createTime) }}</span>
            <span class="note-meta">
              <el-icon size="14"><Pointer /></el-icon> {{ note.likeCount || 0 }}
            </span>
          </div>
        </div>
        <el-empty v-if="!notes.length && !loading" description="暂无笔记" />
      </div>

      <!-- Pagination -->
      <div class="pagination-wrap" v-if="total > 0">
        <el-pagination
          v-model:current-page="page"
          v-model:page-size="size"
          :page-sizes="[8, 16, 24]"
          :total="total"
          layout="total, sizes, prev, pager, next, jumper"
          background
          @size-change="handleSizeChange"
          @current-change="handlePageChange"
        />
      </div>
    </div>

    <!-- Following Dialog -->
    <FollowingDialog
      v-model:visible="showFollowing"
      :user-id="targetUserId"
    />

    <!-- Followers Dialog -->
    <FollowersDialog
      v-model:visible="showFollowers"
      :user-id="targetUserId"
    />
  </div>
</template>

<script setup>
import { ref, computed, onMounted, watch } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { ElMessage, ElMessageBox } from 'element-plus'
import { Edit, Delete, Pointer } from '@element-plus/icons-vue'
import { getUserInfo } from '@/api/user'
import { followUser, unfollowUser } from '@/api/user'
import { getUserNotes, deleteNote as deleteNoteApi } from '@/api/note'
import { useUserStore } from '@/stores/user'
import { stripMarkdown, formatTime } from '@/utils'
import FollowingDialog from '@/components/FollowingDialog.vue'
import FollowersDialog from '@/components/FollowersDialog.vue'

const route = useRoute()
const router = useRouter()
const userStore = useUserStore()

const loading = ref(false)
const profileInfo = ref({})
const isFollowing = ref(false)
const notes = ref([])
const total = ref(0)
const page = ref(1)
const size = ref(8)
const showFollowing = ref(false)
const showFollowers = ref(false)

const targetUserId = computed(() => route.params.userId || userStore.userInfo?.userId)
const isOwnProfile = computed(() => {
  return !route.params.userId || String(route.params.userId) === String(userStore.userInfo?.userId)
})

async function fetchProfile() {
  loading.value = true
  try {
    const res = await getUserInfo(targetUserId.value)
    profileInfo.value = res
    isFollowing.value = res.isFollowing || false
  } finally {
    loading.value = false
  }
}

async function fetchNotes() {
  try {
    const res = await getUserNotes(targetUserId.value, { page: page.value, size: size.value })
    notes.value = res.list || []
    total.value = res.total || 0
  } catch { /* ignore */ }
}

function summary(note) {
  const text = stripMarkdown(note.content || '')
  return text.length > 80 ? text.slice(0, 80) + '...' : text
}

async function handleFollow() {
  try {
    if (isFollowing.value) {
      await unfollowUser(targetUserId.value)
      isFollowing.value = false
      profileInfo.value.followerCount = Math.max(0, (profileInfo.value.followerCount || 1) - 1)
      ElMessage.success('已取消关注')
    } else {
      await followUser(targetUserId.value)
      isFollowing.value = true
      profileInfo.value.followerCount = (profileInfo.value.followerCount || 0) + 1
      ElMessage.success('关注成功')
    }
  } catch { /* handled by interceptor */ }
}

function editNote(id) {
  router.push({ name: 'NoteEdit', params: { id } })
}

async function deleteNote(id) {
  try {
    await ElMessageBox.confirm('确定要删除这篇笔记吗？', '提示', {
      type: 'warning',
      confirmButtonText: '确定',
      cancelButtonText: '取消'
    })
    await deleteNoteApi(id)
    ElMessage.success('删除成功')
    fetchNotes()
  } catch (err) {
    if (err !== 'cancel') { /* ignore */ }
  }
}

function goToDetail(id) {
  const routeData = router.resolve({ name: 'NoteDetail', params: { id } })
  window.open(routeData.href, '_blank')
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

watch(targetUserId, () => {
  page.value = 1
  fetchProfile()
  fetchNotes()
})

onMounted(() => {
  fetchProfile()
  fetchNotes()
})
</script>

<style scoped>
.profile-page {
  padding: 24px;
}
.profile-header {
  background: #fff;
  border: 1px solid #ebeef5;
  border-radius: 12px;
  padding: 32px;
  display: flex;
  align-items: center;
  gap: 24px;
  margin-bottom: 24px;
}
.profile-info {
  flex: 1;
  min-width: 0;
}
.profile-name-row {
  display: flex;
  align-items: center;
  gap: 12px;
  margin-bottom: 6px;
}
.profile-name {
  font-size: 24px;
  font-weight: 700;
  color: #303133;
}
.profile-bio {
  font-size: 14px;
  color: #909399;
  margin-top: 4px;
}
.profile-stats {
  display: flex;
  gap: 32px;
}
.stat-item {
  text-align: center;
}
.stat-clickable {
  cursor: pointer;
}
.stat-clickable:hover .stat-value {
  color: #409eff;
}
.stat-value {
  display: block;
  font-size: 22px;
  font-weight: 700;
  color: #303133;
  transition: color 0.2s;
}
.stat-label {
  font-size: 13px;
  color: #909399;
  margin-top: 2px;
}
.section-title {
  font-size: 18px;
  font-weight: 600;
  color: #303133;
  margin-bottom: 16px;
}
.note-count {
  font-size: 14px;
  color: #909399;
  font-weight: 400;
}
.notes-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 16px;
}
.profile-note-card {
  background: #fff;
  border: 1px solid #ebeef5;
  border-radius: 8px;
  padding: 16px;
  cursor: pointer;
  transition: box-shadow 0.3s, transform 0.2s;
}
.profile-note-card:hover {
  box-shadow: 0 4px 16px rgba(0, 0, 0, 0.08);
  transform: translateY(-1px);
}
.note-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 8px;
}
.note-title {
  font-size: 16px;
  font-weight: 600;
  color: #303133;
  flex: 1;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.note-actions {
  display: flex;
  gap: 4px;
  flex-shrink: 0;
}
.note-summary {
  font-size: 13px;
  color: #606266;
  line-height: 1.5;
  margin-bottom: 10px;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
  overflow: hidden;
}
.note-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 4px;
  margin-bottom: 10px;
}
.note-footer {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.note-time {
  font-size: 12px;
  color: #c0c4cc;
}
.note-meta {
  display: flex;
  align-items: center;
  gap: 4px;
  font-size: 12px;
  color: #909399;
}
.pagination-wrap {
  display: flex;
  justify-content: center;
  padding: 24px 0;
}
</style>
