<template>
  <div class="login-page">
    <div class="login-card">
      <h2 class="title">个人笔记系统</h2>
      <div class="form-wrapper">
        <div class="input-group">
          <el-input v-model="form.username" placeholder="用户名" :prefix-icon="User" @keydown.enter.prevent="handleLogin" />
        </div>
        <div class="input-group">
          <el-input v-model="form.password" type="password" placeholder="密码" show-password :prefix-icon="Lock" @keydown.enter.prevent="handleLogin" />
        </div>
        <div class="input-group">
          <el-button type="primary" :loading="loading" class="submit-btn" native-type="button" @click="handleLogin">
            登 录
          </el-button>
        </div>
      </div>
      <div class="extra-links">
        <span>还没有账号？</span>
        <router-link to="/register">立即注册</router-link>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, reactive } from 'vue'
import { useRouter } from 'vue-router'
import { User, Lock } from '@element-plus/icons-vue'
import { ElMessage } from 'element-plus'
import { useUserStore } from '@/stores/user'

const router = useRouter()
const userStore = useUserStore()
const loading = ref(false)

const form = reactive({
  username: '',
  password: ''
})

async function handleLogin() {
  if (!form.username.trim() || !form.password.trim()) {
    ElMessage.warning('请输入用户名和密码')
    return
  }
  loading.value = true
  try {
    await userStore.login(form.username, form.password)
    ElMessage.success('登录成功')
    router.push('/home')
  } catch (err) {
    ElMessage.error(err.message || '登录失败')
  } finally {
    loading.value = false
  }
}
</script>

<style scoped>
.login-page {
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
}
.login-card {
  width: 400px;
  padding: 40px;
  background: #fff;
  border-radius: 12px;
  box-shadow: 0 8px 32px rgba(0, 0, 0, 0.15);
}
.title {
  text-align: center;
  margin-bottom: 32px;
  font-size: 26px;
  color: #303133;
  font-weight: 700;
}
.form-wrapper {
  width: 100%;
}
.input-group {
  margin-bottom: 22px;
  width: 100%;
}
.submit-btn {
  width: 100%;
  font-size: 16px;
}
.extra-links {
  text-align: center;
  font-size: 14px;
  color: #909399;
  margin-top: 16px;
}
.extra-links a {
  color: #409eff;
  text-decoration: none;
  margin-left: 4px;
}
</style>
