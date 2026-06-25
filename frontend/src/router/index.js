import { createRouter, createWebHistory } from 'vue-router'

const routes = [
  {
    path: '/login',
    name: 'Login',
    component: () => import('@/views/Login.vue'),
    meta: { requiresAuth: false }
  },
  {
    path: '/register',
    name: 'Register',
    component: () => import('@/views/Register.vue'),
    meta: { requiresAuth: false }
  },
  {
    path: '/',
    component: () => import('@/layout/MainLayout.vue'),
    meta: { requiresAuth: true },
    redirect: '/home',
    children: [
      {
        path: 'home',
        name: 'Home',
        component: () => import('@/views/Home.vue')
      },
      {
        path: 'dynamic',
        name: 'Dynamic',
        component: () => import('@/views/Dynamic.vue')
      },
      {
        path: 'profile/:userId?',
        name: 'Profile',
        component: () => import('@/views/Profile.vue')
      },
      {
        path: 'note/create',
        name: 'NoteCreate',
        component: () => import('@/views/NoteCreate.vue')
      },
      {
        path: 'note/edit/:id',
        name: 'NoteEdit',
        component: () => import('@/views/NoteEdit.vue')
      },
      {
        path: 'note/:id',
        name: 'NoteDetail',
        component: () => import('@/views/NoteDetail.vue')
      }
    ]
  }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

router.beforeEach((to, from, next) => {
  const token = localStorage.getItem('token')
  if (to.meta.requiresAuth !== false && !token) {
    next({ name: 'Login' })
  } else if ((to.name === 'Login' || to.name === 'Register') && token) {
    next({ name: 'Home' })
  } else {
    next()
  }
})

export default router