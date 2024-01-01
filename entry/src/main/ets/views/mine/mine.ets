import Title from './title'
import LoginInfo from './login'
import MineNavigator from './navigator'
import BasicInfo from './basicInfo'
import FinanceInfo from './financeInfo'
import SettingInfo from './otherInfo'
@Preview
@Component
struct Mine{
  @State isLogin: boolean = false;
  build(){
    Column(){
        Title();
        LoginInfo({isLogin: this.isLogin});
        MineNavigator();
        Text("Basic Info").tableTitle();
        BasicInfo();
        Text("Financing Info").tableTitle();
        FinanceInfo();
        Text("Setting").tableTitle();
        SettingInfo();
    }.width("100%")
    .height("100%")
    .backgroundImage($r('app.media.bg4'))
    .backgroundImageSize(ImageSize.Cover)
  };
};

@Extend(Text) function tableTitle(){
  .fontSize(14).fontColor("#0F142A")
    .height('30vp').width('100%').margin({left: 20, top: 5, bottom:5,})
};
export {Mine,};
