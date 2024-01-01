import promptAction from '@ohos.promptAction';
import {ItemBuilder} from './common';
@Preview
@Component
struct OtherInfo{

  build(){
    List(){
      ListItem(){
        ItemBuilder($r('app.media.nologin'), "logout", ()=>{
          promptAction.showToast({message: "Account closed", duration: 2000,})
        })
      };
    }.backgroundColor(Color.White)
    .divider({
      strokeWidth: 1,
      color: "#F1F1F1",
      startMargin: 0,
      endMargin: 0,
    }).width('100%').height(45)

  }
};



export default OtherInfo;