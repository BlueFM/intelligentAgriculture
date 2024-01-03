import http from '@ohos.net.http'
import {HttpManager} from '../util/HttpManager'
import { RequestMethod } from '../util/RequestOption'
import { baseUrl } from './BaseData'
//获取融资意向
export function getIntentions(){
  return HttpManager.getInstance()
    .request({
      url:`${baseUrl}/finance/selectIntentionByName`,
      method:RequestMethod.GET,
      header:{
        Authorization:globalThis.token
      }
    })
}
//获取推荐融资人
export function getAllRecommendUsers(){
  return HttpManager.getInstance()
    .request({
      url:`${baseUrl}/finance/selectRecommendByName`,
      method:RequestMethod.GET,
      header:{
        Authorization:globalThis.token
      }
    })
}
//添加融资信息
export function addIntention(intention){
  return HttpManager.getInstance()
    .request({
      url:`${baseUrl}/finance/insertIntentionByName`,
      method:RequestMethod.POST,
      header:{
        Authorization:globalThis.token
      },
      extraData: {
        address: intention.address,
        amount: intention.amount,
        application: intention.application,
        area: intention.area,
        item: intention.item,
        phone: intention.phone,
        realName: intention.realName,
        repaymentPeriod: intention.repaymentPeriod
      }
    })
}
//修改融资信息
export function updateIntention(intention){
  return HttpManager.getInstance()
    .request({
      url:`${baseUrl}/finance/updateIntentionByName`,
      method:RequestMethod.PUT,
      header:{
        Authorization:globalThis.token
      },
      extraData: {
        address: intention.address,
        amount: intention.amount,
        application: intention.application,
        area: intention.area,
        item: intention.item,
        phone: intention.phone,
        realName: intention.realName,
        repaymentPeriod: intention.repaymentPeriod
      }
    })
}
//删除融资信息
export function deleteIntention(){
  return HttpManager.getInstance()
    .request({
      url:`${baseUrl}/finance/deleteIntentionByName`,
      method:RequestMethod.DELETE,
      header:{
        Authorization:globalThis.token
      }
    })
}