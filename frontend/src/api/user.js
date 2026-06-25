import request from './request'

export function getUserInfo(id) {
  return request.get(/user/)
}

export function getFollowingList(id, params = {}) {
  return request.get(/user//following, { params })
}

export function getFollowersList(id, params = {}) {
  return request.get(/user//followers, { params })
}

export function followUser(id) {
  return request.post(/user/follow/)
}

export function unfollowUser(id) {
  return request.delete(/user/follow/)
}

export function searchUser(keyword) {
  return request.get('/user/search', { params: { keyword } })
}
