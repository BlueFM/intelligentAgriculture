import {ItemBuilder} from './common'
@Preview
@Component
struct BasicInfo{


  build(){
    List(){
      ListItem(){
        ItemBuilder($r('app.media.message_dots'), "我的需求",)
      };
      ListItem(){
        ItemBuilder($r('app.media.tabler_credit_card'), "我发布的")
      };
      ListItem(){
        ItemBuilder($r('app.media.map_pin'), "收货地址")
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



export default BasicInfo;