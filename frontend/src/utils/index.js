import { marked } from 'marked'
import hljs from 'highlight.js'
import 'highlight.js/styles/github.css'

marked.setOptions({
  highlight: function (code, lang) {
    if (lang && hljs.getLanguage(lang)) {
      try {
        return hljs.highlight(code, { language: lang }).value
      } catch { /* fall through */ }
    }
    return hljs.highlightAuto(code).value
  },
  breaks: true,
  gfm: true
})

export function renderMarkdown(content) {
  if (!content) return ''
  return marked.parse(content)
}

export function stripMarkdown(content) {
  if (!content) return ''
  return content
    .replace(/`[\s\S]*?`/g, '')
    .replace(/!\[.*?\]\(.*?\)/g, '')
    .replace(/\[([^\]]*)\]\(.*?\)/g, '')
    .replace(/[*#~>\-|]/g, '')
    .replace(/\n+/g, ' ')
    .trim()
}

export function formatTime(timeStr) {
  if (!timeStr) return ''
  const date = new Date(timeStr)
  const now = new Date()
  const diff = now - date
  if (diff < 60000) return '刚刚'
  if (diff < 3600000) return ${Math.floor(diff / 60000)}分钟前
  if (diff < 86400000) return ${Math.floor(diff / 3600000)}小时前
  if (diff < 172800000) return '昨天'
  const y = date.getFullYear()
  const m = String(date.getMonth() + 1).padStart(2, '0')
  const d = String(date.getDate()).padStart(2, '0')
  return ${y}--
}
