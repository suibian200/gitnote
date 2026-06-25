<template>
  <div class="hot-users">
    <h4 class="section-title">🔥 热门用户</h4>
    <div v-loading="loading" element-loading-background="transparent">
      <div v-if="!users.length && !loading" class="empty-text">暂无数据</div>
      <div
        v-for="user in users"
        :key="user.userId"
        class="hot-user-item"
        @click="goToProfile(user.userId)"
      >
        <el-avatar :size="36" :src="user.avatar">
          {{ user.username?.charAt(0)?.toUpperCase() }}
        </el-avatar>
        <div class="user-info">
          <span class="user-name">{{ user.username }}</span>
          <span class="user-likes">{{ user.likeCount || 0 }} 获赞</span>
        </div>
        <el-button
          v-if="user.userId !== currentUserId"
          :type="user.isFollowing ? 'default' : 'primary'"
          size="small"
          :plain="user.isFollowing"
          @click.stop="handleFollow(user)"
        >
          {{ user.isFollowing ? '已关注' : '关注' }}
        </el-button>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue'
import { useRouter } from 'vue-router'
import { ElMessage } from 'element-plus'
import { followUser, unfollowUser } from '@/api/user'
import { useUserStore } from '@/stores/user'

const props = defineProps({
  users: { type: Array, default: () => [] },
  loading: { type: Boolean, default: false }
})

const router = useRouter()
const userStore = useUserStore()
const currentUserId = userStore.userInfo?.userId

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
  router.push({ name: 'Profile', params: { userId } })
}
</script>

<style scoped>
.hot-users {
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
.hot-user-item {
  display: flex;
  align-items: center;
  gap: 10px;
  padding: 8px 8px;
  border-radius: 6px;
  cursor: pointer;
  transition: background 0.2s;
  margin-bottom: 4px;
}
.hot-user-item:hover {
  background: #f5f7fa;
}
.user-info {
  flex: 1;
  min-width: 0;
  display: flex;
  flex-direction: column;
  gap: 2px;
}
.user-name {
  font-size: 14px;
  font-weight: 500;
  color: #303133;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.user-likes {
  font-size: 12px;
  color: #909399;
}
.empty-text {
  color: #c0c4cc;
  font-size: 13px;
  text-align: center;
  padding: 16px 0;
}
</style>
