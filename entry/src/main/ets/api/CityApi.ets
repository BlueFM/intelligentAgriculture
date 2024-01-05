import {HttpManager} from '../util/HttpManager'
import { RequestMethod } from '../util/RequestOption'

// 填写自己的Apk Key
const  apiKey = 'DAEDAJLbaNHzA7Qx+y1lIsGH2H8Gu+uRxJUYxC5O5blgzoPnycY/v6W9LHtJB0fvfCsI8RZOgLzRDsII0R/5yGduLTODLuAnK20cRg=='
//获取IP信息
export function getMyIP(){
  return HttpManager.getInstance()
    .request({url:'http://checkip.amazonaws.com/'})
}
// 获取经纬度信息和城市信息
export function getLocation(ip:string){
  return HttpManager.getInstance()
    .request({
      url:'https://openlocation-drcn.platform.dbankcloud.com/networklocation/v1/ipLocation',
      method:RequestMethod.POST,
      header:{
        Authorization: "Bearer"+" "+`${apiKey}`,
        'x-forwarded-for':`${ip}`
      },
      extraData:{
        ip: ip,
      }
    })
}