import http from '@ohos.net.http';

import { serverIp, toRequest } from '../utils';

function login(username: string, password: string){

  const url = `${serverIp}/user/login`;
  return toRequest(url,{method: http.RequestMethod.POST, extraData: {username, password}});

};

export {login, }