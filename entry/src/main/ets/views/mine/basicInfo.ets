<<<<<<< HEAD
import {ItemBuilder} from './common';
=======
import {ItemBuilder} from './common'
>>>>>>> c4807134a72268a899f771a5dc558528ec6dfb87
@Preview
@Component
struct BasicInfo{


  build(){
    List(){
      ListItem(){
<<<<<<< HEAD
        ItemBuilder($r('app.media.message_dots'), "my need",)
      };
      ListItem(){
        ItemBuilder($r('app.media.tabler_credit_card'), "posted need")
      };
      ListItem(){
        ItemBuilder($r('app.media.map_pin'), "shipping address")
=======
        ItemBuilder($r('app.media.message_dots'), "我的需求",)
      };
      ListItem(){
        ItemBuilder($r('app.media.tabler_credit_card'), "我发布的")
      };
      ListItem(){
        ItemBuilder($r('app.media.map_pin'), "收货地址")
>>>>>>> c4807134a72268a899f771a5dc558528ec6dfb87
      };
    }.backgroundColor(Color.White)
    .divider({
      strokeWidth: 1,
      color: "#F1F1F1",
      startMargin: 0,
      endMargin: 0,
<<<<<<< HEAD
    }).width('100%').height(145)
=======
    })
>>>>>>> c4807134a72268a899f771a5dc558528ec6dfb87

  }
};



export default BasicInfo;