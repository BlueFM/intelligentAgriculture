
@Preview
@Component
struct ListInfo{

  @Builder private ItemBuilder(icon:Resource, title: string,){
      Row(){
        Image(icon).width(20).height(20).margin({right:10});
        Text(title).width(64).height(20).fontSize(16).fontColor("#0F102A")
          .fontWeight(400).flexGrow(1);
        Image($r('app.media.chevron_right')).width(20).height(20).margin({right:10});
      }.width("100%").height('55vp').padding({left: 20, right: 10});
  };

  build(){
    List(){
      ListItem(){
        this.ItemBuilder($r('app.media.user'), "我的需求")
      };
      ListItem(){
        this.ItemBuilder($r('app.media.tabler_credit_card'), "我发布的")
      };
      ListItem(){
        this.ItemBuilder($r('app.media.map_pin'), "收货地址")
      };
    }.backgroundColor(Color.White)
    .divider({
      strokeWidth: 1,
      color: "#F1F1F1",
      startMargin: 0,
      endMargin: 0,
    })
    .width('100%').height(170)
  }
};



export default ListInfo;