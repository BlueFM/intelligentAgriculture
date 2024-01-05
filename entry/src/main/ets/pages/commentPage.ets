import router from '@ohos.router'
@Entry
@Component
struct CommentPage {
  @State message: string = '请输入你的消息'
  @State item: any = {}

  aboutToAppear(){
    this.item = router.getParams()['item']
  }

  build() {
    Row() {
      Flex({ direction: FlexDirection.Column }) {
        Stack({ alignContent: Alignment.Start }) {
          Text('详细信息')
            .width('100%')
            .height(60)
            .fontSize(20)
            .width('100%')
            .textAlign(TextAlign.Center)
            .fontColor(Color.Grey)
          Image($r('app.media.iv_back_selected')).width(40).height(40)
            .onClick(() => {
              router.back();
            }).margin({ left: 10 })
        }.height(60).width('100%').margin({ top: 10 })
      }
      Text(this.item.message)

    } .height('100%')
    .backgroundImage($r('app.media.bg'))
    .width('100%')
    .backgroundImageSize(ImageSize.Cover)

  }
}