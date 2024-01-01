
@Preview
@Component
struct Title{
  build(){
    Row(){
      Text("Mine").fontColor('#F8FAFC')
        .width('56vp')
        .height('28vp')
        .fontSize(22)
        .margin({top:"14vp", left:"24vp"})
    }.width("100%")
  }
}

export default Title;