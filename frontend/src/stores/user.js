import { defineStore } from 'pinia'
import { ref, computed } from 'vue'
import { loginApi, registerApi } from '@/api/auth'

export const useUserStore = defineStore('user', () => {
  const token = ref('')
  const userInfo = ref({
    userId: null,
    username: '',
    email: '',
    avatar: ''
  })

  const isLoggedIn = computed(() => !!token.value)

  function initFromStorage() {
    const savedToken = localStorage.getItem('token')
    const savedUserInfo = localStorage.getItem('userInfo')
    if (savedToken) token.value = savedToken
    if (savedUserInfo) {
      try {
        userInfo.value = JSON.parse(savedUserInfo)
      } catch { /* ignore */ }
    }
  }

  async function login(username, password) {
    const res = await loginApi({ username, password })
    token.value = res.token
    userInfo.value = {
      userId: res.userId,
      username: res.username,
      email: res.email,
      avatar: res.avatar || ''
    }
    localStorage.setItem('token', res.token)
    localStorage.setItem('userInfo', JSON.stringify(userInfo.value))
    return res
  }

  async function register(username, password, email) {
    return await registerApi({ username, password, email })
  }

  function logout() {
    token.value = ''
    userInfo.value = { userId: null, username: '', email: '', avatar: '' }
    localStorage.removeItem('token')
    localStorage.removeItem('userInfo')
  }

  return { token, userInfo, isLoggedIn, initFromStorage, login, register, logout }
})
