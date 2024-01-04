import {HttpManager} from '../util/HttpManager'
import { RequestMethod } from '../util/RequestOption'
import { baseUrl } from './BaseData'

//通过关键字分页查询
export function getKnowledgeByParam(keyword:string,pn:number) {
  return HttpManager.getInstance()
    .request({
      url: `${baseUrl}/knowledge/${keyword}/${pn}`,
      method: RequestMethod.GET
    })
}
//分页获取知识列表信息
export function getKnowledge(pn:number){
  return HttpManager.getInstance()
    .request({
      url:`${baseUrl}/knowledge/${pn}`,
      method:RequestMethod.GET
    })
}
//专家获取知识列表信息
export function selectExpertKnowledge(){
  return HttpManager.getInstance()
    .request({
      url:`${baseUrl}/knowledge/selectByUsername/`,
      header:{
        Authorization:globalThis.token
      },
      method:RequestMethod.GET
    })
}
//删除知识
export function deleteKnowledge(id:string){
  return HttpManager.getInstance()
    .request({
      url:`${baseUrl}/knowledge/${id}`,
      method:RequestMethod.DELETE,
      header:{
        Authorization:globalThis.token
      },
      extraData:{
        knowledgeId:id
      }
    })
}
//修改知识
export function updateKnowledge(info:any){
  let a =info
  console.log(info)

  return HttpManager.getInstance()
    .request({
      url:`${baseUrl}/knowledge/${info.knowledgeId}`,
      method:RequestMethod.PUT,
      header:{
        Authorization:globalThis.token
      },
      extraData:{
        content:info.content,
        knowledgeId:info.knowledgeId,
        title:info.title,
        picPath:info.picPath
      }
    })
}