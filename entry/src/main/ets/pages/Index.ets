@Entry
@Component
struct Index {
  @State currentIndex: number = 0;
  private  tabsController: TabsController = new TabsController();
  @Builder tabBuilder(title: string, targetIndex: number, selectedImage: Resource, normalImage: Resource){
    Column(){
      Image(this.currentIndex==targetIndex ? selectedImage : normalImage).size({width:'24vp', height:'24vp'})
      Text(title).fontColor(this.currentIndex==targetIndex ? "#859669" : "#94A388")
        .margin({top: $r("app.float.tab_text_margin_top")}).fontSize(12).fontFamily("宋体")
    }.width('100%').height('56vp').justifyContent(FlexAlign.Center)
  };
  build() {
  Row(){
    Tabs({index: this.currentIndex, controller: this.tabsController, barPosition: BarPosition.End}){
      TabContent(){
        // Text("Home Context");
        Text(String(this.currentIndex));
      }.tabBar(this.tabBuilder("Home",0,$r('app.media.home3'), $r('app.media.home1')));
      TabContent(){
        Text("Search Context");
      }.tabBar(this.tabBuilder("Search",1,$r('app.media.Search_3'), $r('app.media.Search_1')));
      TabContent(){
        Text("Shopping Cart Context");
      }.tabBar(this.tabBuilder("Shopping Cart",2,$r('app.media.Bag'), $r('app.media.Bag2_2x')));
      TabContent(){
        Text("Search Context");
      }.tabBar(this.tabBuilder("About Me",3,$r('app.media.user_3'), $r('app.media.user_1')));

    }.barHeight('56vp') // 虚拟像素, 设置标签页的属性
    .onChange(
      (index) => this.currentIndex=index
    ); // 事件处理函数
  }.width("100%").height("100%").backgroundImage($r("app.media.bg")).backgroundImageSize(ImageSize.Cover)
  }
}