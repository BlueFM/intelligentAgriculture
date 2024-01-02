import {ItemBuilder} from './common';
@Preview
@Component
struct BasicInfo{


  build(){
    List(){
      ListItem(){
        ItemBuilder($r('app.media.message_dots'), "my need",)
      };
      ListItem(){
        ItemBuilder($r('app.media.tabler_credit_card'), "posted need")
      };
      ListItem(){
        ItemBuilder($r('app.media.map_pin'), "shipping address")
      };
    }.backgroundColor(Color.White)
    .divider({
      strokeWidth: 1,
      color: "#F1F1F1",
      startMargin: 0,
      endMargin: 0,
    }).width('100%').height(145)

  }
};



export default BasicInfo;