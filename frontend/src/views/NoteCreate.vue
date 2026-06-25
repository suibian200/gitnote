<template>
  <div class="note-form-page">
    <div class="form-card">
      <h2 class="form-title">创建笔记</h2>
      <el-form :model="form" label-position="top" size="large" @submit.prevent="handleSave">
        <el-form-item label="标题" :required="true">
          <el-input v-model="form.title" placeholder="输入笔记标题" maxlength="100" show-word-limit />
        </el-form-item>
        <el-form-item label="内容" :required="true">
          <mavon-editor
            v-model="form.content"
            :toolbars="toolbars"
            placeholder="开始写作..."
            style="min-height: 400px"
          />
        </el-form-item>
        <el-form-item label="标签">
          <el-input
            v-model="tagInput"
            placeholder="输入标签后按回车添加，支持多个标签"
            @keyup.enter="addTag"
          />
          <div class="tag-list" v-if="form.tags.length">
            <el-tag
              v-for="(tag, index) in form.tags"
              :key="index"
              closable
              @close="removeTag(index)"
              style="margin-right: 6px; margin-top: 8px"
            >
              {{ tag }}
            </el-tag>
          </div>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" :loading="saving" @click="handleSave">保存</el-button>
          <el-button @click="handleCancel">取消</el-button>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>

<script setup>
import { ref, reactive } from 'vue'
import { useRouter } from 'vue-router'
import { ElMessage } from 'element-plus'
import { createNote } from '@/api/note'

const router = useRouter()

const saving = ref(false)
const tagInput = ref('')

const form = reactive({
  title: '',
  content: '',
  tags: []
})

const toolbars = {
  bold: true,
  italic: true,
  header: true,
  underline: true,
  strikethrough: true,
  mark: true,
  quote: true,
  ol: true,
  ul: true,
  link: true,
  imagelink: true,
  code: true,
  table: true,
  fullscreen: true,
  preview: true,
  htmlcode: false,
  undo: true,
  redo: true,
  trash: false,
  save: false,
  navigation: true,
  alignleft: true,
  aligncenter: true,
  alignright: true
}

function addTag() {
  const tag = tagInput.value.trim()
  if (tag && !form.tags.includes(tag)) {
    form.tags.push(tag)
  }
  tagInput.value = ''
}

function removeTag(index) {
  form.tags.splice(index, 1)
}

async function handleSave() {
  if (!form.title.trim()) {
    ElMessage.warning('请输入标题')
    return
  }
  if (!form.content.trim()) {
    ElMessage.warning('请输入内容')
    return
  }
  saving.value = true
  try {
    await createNote({
      title: form.title.trim(),
      content: form.content,
      tags: form.tags
    })
    ElMessage.success('创建成功')
    router.push('/home')
  } finally {
    saving.value = false
  }
}

function handleCancel() {
  router.back()
}
</script>

<style scoped>
.note-form-page {
  padding: 24px;
  max-width: 960px;
  margin: 0 auto;
}
.form-card {
  background: #fff;
  border: 1px solid #ebeef5;
  border-radius: 12px;
  padding: 32px;
}
.form-title {
  font-size: 22px;
  font-weight: 700;
  color: #303133;
  margin-bottom: 24px;
}
.tag-list {
  display: flex;
  flex-wrap: wrap;
}
</style>
