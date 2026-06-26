import request from './request'

export function getUserInfo(id) {
  return request.get(`/user/${id}`)
}

export function getFollowingList(id, params = {}) {
  return request.get(`/user/${id}/following`, { params })
}

export function getFollowersList(id, params = {}) {
  return request.get(`/user/${id}/followers`, { params })
}

export function followUser(id) {
  return request.post(`/user/follow/${id}`)
}

export function unfollowUser(id) {
  return request.delete(`/user/follow/${id}`)
}

export function searchUser(keyword) {
  return request.get('/user/search', { params: { keyword } })
}
