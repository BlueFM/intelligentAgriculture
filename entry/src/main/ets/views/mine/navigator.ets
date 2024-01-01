
@Preview
@Component
struct MineNavigator{

  @Builder private  builderItem(img: Resource, title: string) {
    Column() {
      Image(img).width('30vp').height('30vp')
      Text(title).fontColor('#666666').fontSize('14vp').height('25vp')
    }.justifyContent(FlexAlign.Center);
  };
  build(){
    Row(){
      Blank();
     this.builderItem($r('app.media.3D'),"Q & A ")
      Blank();
      this.builderItem($r('app.media.Clock1'),"order book")
      Blank();
      this.builderItem($r('app.media.car'),"purchase book")
      Blank();
      this.builderItem($r('app.media.Clock1'),"sell book")
      Blank();
    }.width("350vp")
    .height("90vp")
    .backgroundColor('#FFFFFF')
    .margin({top: "40vp", left: "12vp", right: "12vp"})
    .borderRadius('10vp')
    .shadow({radius: 4,color: "#EBEBEB", offsetX: 2})
    .justifyContent(FlexAlign.SpaceAround)
  }
}

export default MineNavigator