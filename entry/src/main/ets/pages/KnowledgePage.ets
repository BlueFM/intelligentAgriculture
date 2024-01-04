
import {getKnowledge} from '../api/KnowledgeApi'
import router from '@ohos.router'
import { baseUrl, imgUrl } from '../api/BaseData';
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
          List() {
            ForEach(this.knowledgeSrc, (item, i) => {
              ListItem() {
              Row(){
              Image(`${imgUrl}/file/${item.picPath}`).width('40%').height(120).margin({right:10})
                Column(){
                  Text(`${item.title}`)
                    .fontFamily("宋体")
                    .textAlign(TextAlign.Center)
                    .fontSize(16).fontWeight(700).width('55%').maxLines(1)
                  Flex({direction: FlexDirection.Column, justifyContent: FlexAlign.SpaceEvenly}){

                    Text(`${item.content}`).maxLines(2).width('100%').lineHeight(20)
                    Text(`${item.ownName}`).width("100%").textAlign(TextAlign.End)
                  }.height('60%').width("55%").margin({right:"5%"}).borderWidth(0)


                }
              }.width('100%').height("100%").borderWidth(0)
              }
              .width('100%')
              .height(120)
              .borderRadius(10)
              .backgroundColor('#ffffff')
              .opacity(0.8)
              .shadow({ radius: 5, color: '#f2f2f2', offsetX: 5, offsetY: 5 })
              .margin(5)
              .padding(10)
              .onClick(
                () => {
                  router.pushUrl({url: 'pages/KnowledgeInfoPage',params: {info: item}})
                }
              )
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