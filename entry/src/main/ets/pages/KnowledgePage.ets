
import {getKnowledge} from '../api/KnowledgeApi'
import router from '@ohos.router'
import { baseUrl } from '../api/BaseData';
@Entry
@Component
struct KnowledgePage{

  @State knowledgeSrc: Array<any> = [];
  @State pageNum: number = 1;
  private scroller: Scroller = new Scroller();

  aboutToAppear(){
    this.getKnowledge();
  }

  getKnowledge(){
    getKnowledge(this.pageNum).then(
      (res) => {
        let knowledgeDataArray = JSON.parse(res.result.toString()).data.list;
        for ( let i = 0; i < knowledgeDataArray.length; i++ ) {
          const element = knowledgeDataArray[i];
          this.knowledgeSrc.push( element)
        }
      }
    )

  }

  build(){
    Flex({ direction: FlexDirection.Column }) {

      Stack({ alignContent: Alignment.Start }) {
        Text("农业知识")
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

      Row() {
        Scroll(this.scroller) {
          Flex({ wrap: FlexWrap.Wrap, justifyContent: FlexAlign.SpaceBetween }) {
            ForEach(this.knowledgeSrc, (item, i) => {
              Column() {
                Image(`${baseUrl}/file/${item.picture}`)
                  .width('100%')
                  .height(160)
                  .borderRadius(10)
                Flex({ direction: FlexDirection.Column }) {
                  Text(`[${item.ownName}]`).margin({ right: 5 })
                  Text(`${item.content}`).height(30).lineHeight(30)
                  // Flex({ justifyContent: FlexAlign.SpaceBetween }) {
                  //   Text('￥' + item.price).fontColor(Color.Red).height(20).lineHeight(20)
                  // }
                }
                .padding(5)
              }
              .width('47%')
              .height(260)
              .borderRadius(10)
              .backgroundColor('#ffffff')
              .opacity(0.8)
              .shadow({ radius: 5, color: '#f2f2f2', offsetX: 5, offsetY: 5 })
              .margin(5)
              .padding(10)
            }, item => item)
          }.width('100%')
        }.scrollable(ScrollDirection.Vertical)
        .onScrollEdge(() => {
          if (this.pageNum < globalThis.navigateLastPage) {
            this.pageNum += 1;
            this.getKnowledge();
          }
        })
      }.width('100%')
      .layoutWeight(1)
      .alignItems(VerticalAlign.Top)

    }
    .width('100%')
    .height('100%')
    .padding({ left: 10, right: 10 })
    .backgroundImage($r('app.media.bg'))
    .backgroundImageSize(ImageSize.Cover)
  }
}