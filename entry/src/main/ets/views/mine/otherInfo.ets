<<<<<<< HEAD
import promptAction from '@ohos.promptAction';
import {ItemBuilder} from './common';
=======
import Prompt from '@system.prompt';
import promptAction from '@ohos.promptAction';
import {ItemBuilder} from './common'
>>>>>>> c4807134a72268a899f771a5dc558528ec6dfb87
@Preview
@Component
struct OtherInfo{

  build(){
    List(){
      ListItem(){
<<<<<<< HEAD
        ItemBuilder($r('app.media.nologin'), "logout", ()=>{
          promptAction.showToast({message: "Account closed", duration: 2000,})
=======
        ItemBuilder($r('app.media.nologin'), "注销", ()=>{
          promptAction.showToast({message: "已注销", duration: 3000,})
>>>>>>> c4807134a72268a899f771a5dc558528ec6dfb87
        })
      };
    }.backgroundColor(Color.White)
    .divider({
      strokeWidth: 1,
      color: "#F1F1F1",
      startMargin: 0,
      endMargin: 0,
<<<<<<< HEAD
    }).width('100%').height(45)
=======
    })
>>>>>>> c4807134a72268a899f771a5dc558528ec6dfb87

  }
};



export default OtherInfo;