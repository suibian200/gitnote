import request from './request'

export function loginApi(data) {
  return request.post('/user/login', data)
}

export function registerApi(data) {
  return request.post('/user/register', data)
}
