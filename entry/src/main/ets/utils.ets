
import http from '@ohos.net.http'

const serverIp: string = 'http://192.168.174.34:9090'

function toRequest(url: string, options: http.HttpRequestOptions){

  const req = http.createHttp()
  return req.request(
    url,
    options,
  )
}

export {serverIp,toRequest,}