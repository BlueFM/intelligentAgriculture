<<<<<<< HEAD
import {ItemBuilder} from './common';
=======
import {ItemBuilder} from './common'
>>>>>>> c4807134a72268a899f771a5dc558528ec6dfb87
@Preview
@Component
struct FinanceInfo{

  build(){
    List(){
      ListItem(){
<<<<<<< HEAD
        ItemBuilder($r('app.media.user'), "intelligent match")
      };
      ListItem(){
        ItemBuilder($r('app.media.tabler_credit_card'), "financing application")
      };
      ListItem(){
        ItemBuilder($r('app.media.map_pin'), "my financing")
=======
        ItemBuilder($r('app.media.user'), "智能匹配")
      };
      ListItem(){
        ItemBuilder($r('app.media.tabler_credit_card'), "融资申请")
      };
      ListItem(){
        ItemBuilder($r('app.media.map_pin'), "我的融资")
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



export default FinanceInfo;