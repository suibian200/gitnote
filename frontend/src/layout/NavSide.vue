<template>
  <div class="nav-side">
    <el-menu
      :default-active="activeMenu"
      router
      :collapse="false"
      style="border-right: none;"
    >
      <el-menu-item index="/home">
        <el-icon><HomeFilled /></el-icon>
        <template #title>首页</template>
      </el-menu-item>
      <el-menu-item index="/dynamic">
        <el-icon><Notification /></el-icon>
        <template #title>动态</template>
      </el-menu-item>
      <el-menu-item :index="'/profile/' + (userStore.userInfo?.userId || '')">
        <el-icon><UserFilled /></el-icon>
        <template #title>个人主页</template>
      </el-menu-item>
      <el-divider style="margin: 8px 0;" />
      <el-menu-item index="/note/create">
        <el-icon><EditPen /></el-icon>
        <template #title>写笔记</template>
      </el-menu-item>
      <el-divider style="margin: 8px 0;" />
      <el-menu-item index="logout" @click="handleLogout">
        <el-icon><SwitchButton /></el-icon>
        <template #title>退出登录</template>
      </el-menu-item>
    </el-menu>
  </div>
</template>

<script setup>
import { computed } from 'vue'
import { useRouter, useRoute } from 'vue-router'
import { useUserStore } from '@/stores/user'

const router = useRouter()
const route = useRoute()
const userStore = useUserStore()

const activeMenu = computed(() => {
  const path = route.path
  if (path.startsWith('/profile')) return '/profile/' + (userStore.userInfo?.userId || '')
  if (path.startsWith('/note')) return '/home'
  return path
})

function handleLogout() {
  userStore.logout()
  router.push({ name: 'Login' })
}
</script>

<style scoped>
.nav-side {
  padding: 8px 0;
}
.el-menu-item {
  font-size: 15px;
  height: 48px;
  line-height: 48px;
}
.el-menu-item.is-active {
  background-color: #ecf5ff;
  color: #409eff;
  font-weight: 600;
  border-right: 3px solid #409eff;
}
</style>
