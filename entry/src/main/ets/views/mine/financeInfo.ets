import {ItemBuilder} from './common';
@Preview
@Component
struct FinanceInfo{

  build(){
    List(){
      ListItem(){
        ItemBuilder($r('app.media.user'), "intelligent match")
      };
      ListItem(){
        ItemBuilder($r('app.media.tabler_credit_card'), "financing application")
      };
      ListItem(){
        ItemBuilder($r('app.media.map_pin'), "my financing")
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



export default FinanceInfo;