<template>
  <el-dialog
    :model-value="visible"
    title="粉丝"
    width="480px"
    @update:model-value="('update:visible', )"
    @close="handleClose"
  >
    <div v-loading="loading" class="user-list">
      <div v-if="!users.length && !loading" class="empty-text">暂无粉丝</div>
      <div v-for="user in users" :key="user.userId" class="user-item">
        <el-avatar :size="36" :src="user.avatar" @click="goToProfile(user.userId)" style="cursor:pointer">
          {{ user.username?.charAt(0)?.toUpperCase() }}
        </el-avatar>
        <div class="user-info" @click="goToProfile(user.userId)">
          <span class="user-name">{{ user.username }}</span>
          <span class="user-bio">{{ user.bio || '' }}</span>
        </div>
        <el-button
          v-if="user.userId !== currentUserId"
          :type="user.isFollowing ? 'default' : 'primary'"
          size="small"
          :plain="user.isFollowing"
          @click="handleFollow(user)"
        >
          {{ user.isFollowing ? '已关注' : '关注' }}
        </el-button>
      </div>
    </div>
    <div class="pagination-wrap" v-if="total > size">
      <el-pagination
        v-model:current-page="page"
        v-model:page-size="size"
        :total="total"
        layout="prev, pager, next"
        small
        background
        @current-change="fetchUsers"
      />
    </div>
  </el-dialog>
</template>

<script setup>
import { ref, watch } from 'vue'
import { useRouter } from 'vue-router'
import { ElMessage } from 'element-plus'
import { getFollowersList, followUser, unfollowUser } from '@/api/user'
import { useUserStore } from '@/stores/user'

const props = defineProps({
  visible: { type: Boolean, default: false },
  userId: [String, Number]
})

const emit = defineEmits(['update:visible'])

const router = useRouter()
const userStore = useUserStore()
const currentUserId = userStore.userInfo?.userId

const users = ref([])
const total = ref(0)
const page = ref(1)
const size = ref(10)
const loading = ref(false)

async function fetchUsers() {
  if (!props.userId) return
  loading.value = true
  try {
    const res = await getFollowersList(props.userId, { page: page.value, size: size.value })
    users.value = res.list || []
    total.value = res.total || 0
  } finally {
    loading.value = false
  }
}

async function handleFollow(user) {
  try {
    if (user.isFollowing) {
      await unfollowUser(user.userId)
      user.isFollowing = false
      ElMessage.success('已取消关注')
    } else {
      await followUser(user.userId)
      user.isFollowing = true
      ElMessage.success('关注成功')
    }
  } catch { /* handled by interceptor */ }
}

function goToProfile(userId) {
  emit('update:visible', false)
  router.push({ name: 'Profile', params: { userId } })
}

function handleClose() {
  page.value = 1
}

watch(() => props.visible, (val) => {
  if (val) {
    page.value = 1
    fetchUsers()
  }
})
</script>

<style scoped>
.user-list {
  min-height: 100px;
}
.user-item {
  display: flex;
  align-items: center;
  gap: 12px;
  padding: 10px 0;
  border-bottom: 1px solid #f0f0f0;
}
.user-item:last-child {
  border-bottom: none;
}
.user-info {
  flex: 1;
  min-width: 0;
  cursor: pointer;
  display: flex;
  flex-direction: column;
  gap: 2px;
}
.user-name {
  font-size: 14px;
  font-weight: 500;
  color: #303133;
}
.user-bio {
  font-size: 12px;
  color: #909399;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.empty-text {
  text-align: center;
  color: #c0c4cc;
  padding: 40px 0;
}
.pagination-wrap {
  display: flex;
  justify-content: center;
  margin-top: 12px;
}
</style>
