import router from '@ohos.router';
import promptAction from '@ohos.promptAction';
@Entry
@Component
struct Login {

  @State username: string = 'user';
  @State pwd: string = '123456';

  build() {
    Stack(){
      // 第一层
      Row(){}.width('100%').height('100%')
      .backgroundImage($r('app.media.bj'))
      .opacity(0.35)
      .backgroundImageSize(ImageSize.Contain);
      // 第二层
      Row(){
        Column(){
          // head
          Stack({alignContent: Alignment.Start}){
            Text("用户登录").width('100%').height(60).textAlign(TextAlign.Center)
              .fontColor(Color.Gray);
            Image($r('app.media.iv_back_selected'))
              .width(40).height(40).margin({left: 10})
              .onClick(() => {
                router.back();
              });
          }.width('100%').height(60).margin({top: 10});
          // 图标
          Image($r('app.media.log')).width(140).height(140).margin({top: 40});
          Text("IA APP").fontColor("#A4CD3D").fontSize(24).margin(15);

          // 账号输入框
          Row(){
            Text("username:").fontSize(16).fontColor(Color.Gray).margin({left: 15});
            TextInput({placeholder: 'please input your username',text: this.username})
              .placeholderColor(Color.Gray).fontSize(12)
              .borderWidth(0).backgroundColor(Color.Transparent).flexGrow(1)
              .onChange((value) => this.username = value);
          }.width('90%').height(50).margin({top: 40})
          .backgroundColor(Color.White)
          .borderRadius(10);

          // 密码输入框
          Row(){
            Text("password:").fontSize(16).fontColor(Color.Gray).margin({left: 15});
            TextInput({placeholder: 'please input your password', text: this.pwd})
              .placeholderColor(Color.Gray).fontSize(12).type(InputType.Password)
              .borderWidth(0).backgroundColor(Color.Transparent).flexGrow(1)
              .onChange((value) => this.pwd = value);
          }.width('90%').height(50).margin({top: 40})
          .backgroundColor(Color.White)
          .borderRadius(10);

          // 登录按钮
          Row(){
            Button('sign up').width("45%").borderRadius(8)
              .backgroundColor(Color.White).fontColor(Color.Gray).margin({right: 30});
            Button('login').width("45%").borderRadius(8)
              .onClick(() =>{
              promptAction.showToast({message: "正在登陆"})
              });
          }.width('90%').height(50).margin({top: 40});

        }.width('100%').height('100%');
      }.height('100%').backgroundColor('#E0EBF4').opacity(0.9);
    };
  };
};