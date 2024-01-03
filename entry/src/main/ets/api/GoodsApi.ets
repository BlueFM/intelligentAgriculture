import {HttpManager} from '../util/HttpManager'
import { RequestMethod } from '../util/RequestOption'
import { baseUrl } from './BaseData'
//获取商品货源/求购需求
export function getGoods(type:string,pn:number){
  let url = `${baseUrl}/order/${type}/${pn}`
  return HttpManager.getInstance()
    .request({
      url,
      method:RequestMethod.GET
    })
}
//通过关键字分页查询
export function getGoodsByParam(keyword:string,pn:number){
  return HttpManager.getInstance()
    .request({
      url:`${baseUrl}/order/searchAllByKeys/${encodeURI(keyword)}/${pn}`,
      method:RequestMethod.GET
    })
}