
@Preview
@Component
struct LoginInfo{
  @Prop isLogin: boolean;
  build(){
    Row(){
      if (this.isLogin){

      }else{
        Image($r('app.media.nologin')).width("50vp").
        borderRadius("25vp");

        Text("login").fontSize(18)
          .fontColor('#FFFFFF')
          .fontWeight("700vp")
          .height("25vp")
          .margin({left: "5vp"});
      }
    }.width("100%").
    padding({left: "24vp", right: "24vp"}).
    height("67vp").
    alignItems(VerticalAlign.Center)
  }

}

export default LoginInfo