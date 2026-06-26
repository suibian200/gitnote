import axios from 'axios'
import { ElMessage } from 'element-plus'
import router from '@/router'

const request = axios.create({
  baseURL: '/api',
  timeout: 15000
})

request.interceptors.request.use(
  (config) => {
    const token = localStorage.getItem('token')
    if (token) {
      config.headers.Authorization = 'Bearer ' + token 
    }
    return config
  },
  (error) => Promise.reject(error)
)

request.interceptors.response.use(
  (response) => {
    (function fixAvatarUrls(obj) {
        if (!obj || typeof obj !== 'object') return
        if (Array.isArray(obj)) { obj.forEach(fixAvatarUrls); return }
        for (const key of Object.keys(obj)) {
            const val = obj[key]
            if ((key === 'avatar' || key === 'authorAvatar') && typeof val === 'string' && val && !val.startsWith('/') && !val.startsWith('http')) {
                obj[key] = '/' + val
            } else if (Array.isArray(val)) {
                val.forEach(fixAvatarUrls)
            } else if (val && typeof val === 'object') {
                fixAvatarUrls(val)
            }
        }
    })(response.data)
    return response.data
},
  (error) => {
    const msg = error.response?.data?.message || error.message || '请求失败'
    if (error.response?.status === 401) {
      localStorage.removeItem('token')
      localStorage.removeItem('userInfo')
      router.push('/login')
      return Promise.reject(error)
    }
    ElMessage.error(msg)
    return Promise.reject(error)
  }
)

export default request