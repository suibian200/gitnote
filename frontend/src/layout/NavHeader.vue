<template>
  <div class="nav-header">
    <div class="header-left">
      <span class="logo-icon">
        <el-icon :size="28"><Notebook /></el-icon>
      </span>
      <span class="logo-text">个人笔记</span>
    </div>
    <div class="header-right">
      <el-input
        v-model="searchKeyword"
        placeholder="搜索笔记、用户..."
        :prefix-icon="Search"
        clearable
        class="search-input"
        size="large"
        @keyup.enter="handleSearch"
      />
      <div class="user-info" v-if="userStore.userInfo">
        <el-avatar :size="32" :src="userStore.userInfo.avatar">
          {{ userStore.userInfo.username?.charAt(0)?.toUpperCase() }}
        </el-avatar>
        <span class="username">{{ userStore.userInfo.username }}</span>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import { useRouter } from 'vue-router'
import { Search, Notebook } from '@element-plus/icons-vue'
import { useUserStore } from '@/stores/user'

const router = useRouter()
const userStore = useUserStore()
const searchKeyword = ref('')

function handleSearch() {
  const keyword = searchKeyword.value.trim()
  if (keyword) {
    router.push({ name: 'Home', query: { search: keyword } })
  }
}
</script>

<style scoped>
.nav-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  width: 100%;
  height: 100%;
}
.header-left {
  display: flex;
  align-items: center;
  gap: 10px;
}
.logo-icon {
  color: #409eff;
  display: flex;
  align-items: center;
}
.logo-text {
  font-size: 20px;
  font-weight: 700;
  color: #303133;
  letter-spacing: 1px;
}
.header-right {
  display: flex;
  align-items: center;
  gap: 20px;
}
.search-input {
  width: 280px;
}
.user-info {
  display: flex;
  align-items: center;
  gap: 8px;
  cursor: default;
}
.username {
  font-size: 14px;
  color: #606266;
  font-weight: 500;
}
</style>
