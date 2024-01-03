import http from '@ohos.net.http';

import { serverIp, toRequest } from '../utils';

function login(username: string, password: string){

  const url = `${serverIp}/user/login`;
  return toRequest(url,{method: http.RequestMethod.POST, extraData: {username, password}});

};
function register(nickName:String,password:String,username:String)
{
  const url = `${serverIp}/user/add`;
  return toRequest(url,{method:http.RequestMethod.POST,extraData:{avatar:"rongxiaotong.gif",nickName,password,username}})
}


export {login,register}


