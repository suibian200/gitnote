import request from './request'

export function getNoteList(params = {}) {
  return request.get('/note/list', { params })
}

export function getNoteDynamic(params = {}) {
  return request.get('/note/dynamic', { params })
}

export function getUserNotes(id, params = {}) {
  return request.get(/note/user/, { params })
}

export function getNoteDetail(id) {
  return request.get(/note/)
}

export function createNote(data) {
  return request.post('/note/create', data)
}

export function updateNote(id, data) {
  return request.put(/note/, data)
}

export function deleteNote(id) {
  return request.delete(/note/)
}

export function getNoteTags() {
  return request.get('/note/tags')
}

export function likeNote(id) {
  return request.post(/note/like/)
}

export function unlikeNote(id) {
  return request.delete(/note/like/)
}
