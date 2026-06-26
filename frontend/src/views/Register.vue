<template>
  <div class="register-page">
    <div class="register-card">
      <h2 class="title">注册账号</h2>
      <div class="form-wrapper">
        <div class="input-group">
          <el-input v-model="form.username" placeholder="用户名" :prefix-icon="User" @keydown.enter.prevent="handleRegister" />
        </div>
        <div class="input-group">
          <el-input v-model="form.email" placeholder="邮箱" :prefix-icon="Message" @keydown.enter.prevent="handleRegister" />
        </div>
        <div class="input-group">
          <el-input v-model="form.password" type="password" placeholder="密码" show-password :prefix-icon="Lock" @keydown.enter.prevent="handleRegister" />
        </div>
        <div class="input-group">
          <el-input v-model="form.confirmPassword" type="password" placeholder="确认密码" show-password :prefix-icon="Lock" @keydown.enter.prevent="handleRegister" />
        </div>
        <div class="input-group">
          <el-button type="primary" :loading="loading" class="submit-btn" native-type="button" @click="handleRegister">
            注 册
          </el-button>
        </div>
      </div>
      <div class="extra-links">
        <span>已有账号？</span>
        <router-link to="/login">返回登录</router-link>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, reactive } from 'vue'
import { useRouter } from 'vue-router'
import { User, Lock, Message } from '@element-plus/icons-vue'
import { ElMessage } from 'element-plus'
import { useUserStore } from '@/stores/user'

const router = useRouter()
const userStore = useUserStore()
const loading = ref(false)

const form = reactive({
  username: '',
  email: '',
  password: '',
  confirmPassword: ''
})

async function handleRegister() {
  if (!form.username.trim()) {
    ElMessage.warning('请输入用户名')
    return
  }
  if (!form.email.trim()) {
    ElMessage.warning('请输入邮箱')
    return
  }
  if (form.password.length < 6) {
    ElMessage.warning('密码至少6个字符')
    return
  }
  if (form.password !== form.confirmPassword) {
    ElMessage.warning('两次输入的密码不一致')
    return
  }
  loading.value = true
  try {
    await userStore.register(form.username, form.password, form.email)
    ElMessage.success('注册成功，请登录')
    router.push('/login')
  } catch (err) {
    ElMessage.error(err.message || '注册失败')
  } finally {
    loading.value = false
  }
}
</script>

<style scoped>
.register-page {
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
}
.register-card {
  width: 420px;
  padding: 40px;
  background: #fff;
  border-radius: 12px;
  box-shadow: 0 8px 32px rgba(0, 0, 0, 0.15);
}
.title {
  text-align: center;
  margin-bottom: 28px;
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
