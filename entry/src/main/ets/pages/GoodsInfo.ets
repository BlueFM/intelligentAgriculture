import router from '@ohos.router';
import promptAction from '@ohos.promptAction';
import {serverIp} from '../utils'
import {addToCart} from '../api/cart'

@Entry
@Component
struct GoodsInfoPage {
  @State info: any = '';
  @State isShow: boolean = false

  aboutToAppear() {
    this.info = router.getParams()['info'];
  }

  build() {
    Stack({ alignContent: Alignment.Top }) {
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
      }.height(60).width('100%').margin({ top: 10 }).zIndex(1)

      Column() {
        Image(`${serverIp}/file/${this.info.picture}`)
          .width('100%')
          .height(300)
          .margin({ bottom: 10 })
          .borderRadius(10)
        Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
          Text(this.info.title).fontSize(30)
        }.height(60)

        Divider().margin(10).color(Color.Gray)
        Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Start }) {
          Text(this.info.content).fontSize(20)
        }.height(200).padding({ left: 10 })

        Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
          Text(`￥${this.info.price}`).fontSize(25).fontColor(Color.Red)
        }.height(40).padding({ left: 10 })

        Flex({ justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {
          Text(`发布时间:${this.info.createTime.substring(0, 10)}`).fontSize(16)
          Text(`最近修改时间:${this.info.updateTime.substring(0, 10)}`).fontSize(16)
        }.height(50).padding({ left: 10 }).margin({ bottom: 10 })

        Flex({ justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center }) {
          Column() {
            Image($r('app.media.pl')).width(20).height(20).margin({ bottom: 5 })
            Text("评论").fontSize(14)
          }

          Column() {
            Button('加入购物车')
              .visibility(this.info.type == 'goods' ? Visibility.Visible : Visibility.None)
              .backgroundColor(Color.Red)
              .onClick(() => {
                if (globalThis.token) {

                  addToCart(this.info.orderId).then((res) => {
                    let rst = JSON.parse(res.result.toString());
                    if (rst.code == 20000) {
                      promptAction.showToast({ message: "添加商品到购物车成功！", duration: 2000 })
                    } else {
                      promptAction.showToast({ message: "添加商品到购物车失败！", duration: 2000 })
                    }
                  })
                } else {
                  AlertDialog.show({
                    title: '提示',
                    message: "请先登录！",
                    primaryButton: {
                      value: '确定',
                      action: () => {
                      }
                    }
                  })
                }
              })
            Button('联系买家')
              .visibility(this.info.type == 'needs' ? Visibility.Visible : Visibility.None)
              .onClick(() => {
                this.isShow = true;
              })
          }
        }.margin({ bottom: 10 })

      }.zIndex(-1).margin({ top: 70, bottom: 10, left: 10, right: 10 })

      //显示卖家信息
      Panel(this.isShow) {
        Column() {
          List() {
            ListItem() {
              Text("买家姓名:" + this.info.ownName)
            }.padding({ left: 20, right: 20 }).height(60)

            ListItem() {
              Text("买家地址:" + this.info.address)
            }.padding({ left: 20, right: 20 }).height(60)

            ListItem() {
              Row() {
                Button("取消").type(ButtonType.Normal).onClick(() => {
                  this.isShow = false;
                })
              }.width('100%').justifyContent(FlexAlign.Center)
            }.padding({ left: 20, right: 20 }).height(60)
          }.divider({ strokeWidth: 1, color: '#f1f1f1', startMargin: 20, endMargin: 20 })
        }
      }
      .type(PanelType.Foldable).mode(PanelMode.Half)
      .dragBar(true) // 默认开启
      .halfHeight(200) // 默认一半
    }
    .width('100%')
    .height('100%')
    .backgroundImage($r('app.media.bg'))
    .backgroundImageSize(ImageSize.Cover)

  }
}