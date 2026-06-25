import request from './request'

export function getHotUsers() {
  return request.get('/rank/users')
}

export function getHotNotes() {
  return request.get('/rank/notes')
}
