import Prompt from '@system.prompt';
import promptAction from '@ohos.promptAction';
import {ItemBuilder} from './common'
@Preview
@Component
struct OtherInfo{

  build(){
    List(){
      ListItem(){
        ItemBuilder($r('app.media.nologin'), "注销", ()=>{
          promptAction.showToast({message: "已注销", duration: 3000,})
        })
      };
    }.backgroundColor(Color.White)
    .divider({
      strokeWidth: 1,
      color: "#F1F1F1",
      startMargin: 0,
      endMargin: 0,
    })

  }
};



export default OtherInfo;