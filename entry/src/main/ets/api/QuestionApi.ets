import {HttpManager} from '../util/HttpManager'
import { RequestMethod } from '../util/RequestOption'
import { baseUrl } from './BaseData'


//获取我的问答信息
export function getMyQuestion(){
  return HttpManager.getInstance()
    .request({
      url:`${baseUrl}/question/selectByKind/questioner`,
      method:RequestMethod.GET,
      header:{
        Authorization:globalThis.token
      }
    })
}