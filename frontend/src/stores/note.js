import { defineStore } from 'pinia'
import { ref } from 'vue'
import {
  getNoteList, getNoteDetail, createNote, updateNote, deleteNote,
  getNoteDynamic, getUserNotes, likeNote, unlikeNote, getNoteTags
} from '@/api/note'
import { getHotUsers, getHotNotes } from '@/api/rank'

export const useNoteStore = defineStore('note', () => {
  const notes = ref([])
  const currentNote = ref(null)
  const tags = ref([])
  const total = ref(0)
  const page = ref(1)
  const size = ref(10)
  const loading = ref(false)

  const hotUsers = ref([])
  const hotNotes = ref([])

  async function fetchNotes(params = {}) {
    loading.value = true
    try {
      const res = await getNoteList({ page: page.value, size: size.value, ...params })
      notes.value = res.list || []
      total.value = res.total || 0
      page.value = res.page || 1
      size.value = res.size || 10
    } finally {
      loading.value = false
    }
  }

  async function fetchNoteDetail(id) {
    const res = await getNoteDetail(id)
    currentNote.value = res
    return res
  }

  async function fetchTags() {
    const res = await getNoteTags()
    tags.value = Array.isArray(res) ? res : (res.list || [])
    return tags.value
  }

  async function fetchHotUsers() {
    const res = await getHotUsers()
    hotUsers.value = Array.isArray(res) ? res : (res.list || [])
    return hotUsers.value
  }

  async function fetchHotNotes() {
    const res = await getHotNotes()
    hotNotes.value = Array.isArray(res) ? res : (res.list || [])
    return hotNotes.value
  }

  async function addLike(noteId) {
    return await likeNote(noteId)
  }

  async function removeLike(noteId) {
    return await unlikeNote(noteId)
  }

  return {
    notes, currentNote, tags, total, page, size, loading,
    hotUsers, hotNotes,
    fetchNotes, fetchNoteDetail, fetchTags,
    fetchHotUsers, fetchHotNotes, addLike, removeLike,
    createNote, updateNote, deleteNote, getUserNotes, getNoteDynamic
  }
})
