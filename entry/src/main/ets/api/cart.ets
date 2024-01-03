
import http from '@ohos.net.http'
import { serverIp, toRequest } from '../utils'


function getCartList(){

  const url: string = `${serverIp}/cart/show`;
  let data =  toRequest(
    url,
    {
      method: http.RequestMethod.GET,
      header:
      {
        Authorization: globalThis.token
      },
    }
  )
  return data
}

export {getCartList, }