import Title from './title'
import LoginInfo from './login'
import MineNavigator from './navigator'
import ListInfo from './ListInfo'
@Preview
@Component
struct Mine{
  @State isLogin: boolean = false;
  build(){
    Column(){
        Column(){
          Title();
          LoginInfo({isLogin: this.isLogin}).margin({top: 10,});
        }.backgroundColor(Color.Green)
        MineNavigator();
        Text("Basic Info").tableTitle();
        ListInfo()
        Text("Financing Info").tableTitle();
        Text("Setting").tableTitle();
    }.width("100%")
    .height("100%")
    .backgroundImage($r('app.media.bg4'))
    .backgroundImageSize(ImageSize.Cover)
  };
};

@Extend(Text) function tableTitle(){
  .fontSize(16).fontColor("#0F142A")
    .height('30vp').width('100%').margin({left: 20, top: 10, bottom: 10,})
};
export {Mine,};
