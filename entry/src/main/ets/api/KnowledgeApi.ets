import {HttpManager} from '../util/HttpManager'
import { RequestMethod } from '../util/RequestOption'
import { baseUrl } from './BaseData'

export function getKnowledge(pn:number){
  let url = `${baseUrl}/knowledge/${pn}`
  return HttpManager.getInstance()
    .request({
      url,
      method:RequestMethod.GET
    })
}
//通过关键字分页查询
export function getKnowledgeByParam(keyword:string,pn:number) {
  return HttpManager.getInstance()
    .request({
      url: `${baseUrl}/knowledge/${keyword}/${pn}`,
      method: RequestMethod.GET
    })
}
