
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

function addToCart(goodId: string){
  let url: string = `${serverIp}/cart/add/${goodId}`;
  return toRequest(
    url,
    {
      method: http.RequestMethod.POST,
      header:
      {
        Authorization: globalThis.token
      },
      extraData: {}
    })
}

function updateCartGoodsInfo(shoppedId: number, count: number){
  let url: string = `${serverIp}/cart/update/${shoppedId}/${count}`;
  return toRequest(
    url,
    {
      method: http.RequestMethod.PUT,
      header: {
        Authorization: globalThis.token
      },
      extraData: {}
    }
  )
}

function deleteCartGoods(shoppingId: number){
  let url: string = `${serverIp}/cart/delete/${shoppingId}`;
  return toRequest(
    url,
    {
      method: http.RequestMethod.DELETE,
      header: {
        Authorization: globalThis.token
      },
      extraData: {}
    }
  )
}

function getAllAddress(){
  let url: string = `${serverIp}/address/selectByOwnName`;
  return toRequest(
    url,
    {
      method: http.RequestMethod.GET,
      header: {
        Authorization: globalThis.token
      },
    }
  )
}

function getDefaultAddress(){
  let url: string = `${serverIp}/address/selectDefaultByOwnName`;
  return toRequest(
    url,
    {
      method: http.RequestMethod.GET,
      header: {
        Authorization: globalThis.token
      },
    }
  )
}

function buyGoods(userId: number, total: number, items: any){

  let url: string = `${serverIp}/cart/commitOrder/${userId}/${total}`;
  return toRequest(
    url,
    {
      method: http.RequestMethod.POST,
      header: {
        Authorization: globalThis.token
      },
      extraData: items
    }
  )
}

export {getCartList, addToCart, deleteCartGoods, buyGoods, updateCartGoodsInfo, getAllAddress, getDefaultAddress}