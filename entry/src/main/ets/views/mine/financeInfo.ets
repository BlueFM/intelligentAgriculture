import {ItemBuilder} from './common'
@Preview
@Component
struct FinanceInfo{

  build(){
    List(){
      ListItem(){
        ItemBuilder($r('app.media.user'), "智能匹配")
      };
      ListItem(){
        ItemBuilder($r('app.media.tabler_credit_card'), "融资申请")
      };
      ListItem(){
        ItemBuilder($r('app.media.map_pin'), "我的融资")
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



export default FinanceInfo;