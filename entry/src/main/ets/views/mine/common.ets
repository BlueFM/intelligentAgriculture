type emptyFn = ()=>void;
const EmptyFunction: emptyFn = ()=>{};

@Builder
function ItemBuilder(
    icon:Resource,
    title: string,
    fn: emptyFn = EmptyFunction
){
  Row(){
    Image(icon).width(20).height(20).margin({right:10});
    Text(title).width(64).height(20).fontSize(16).fontColor("#0F102A")
      .fontWeight(400).flexGrow(1);
    Image($r('app.media.chevron_right')).width(20).height(20).margin({right:10});
  }.width("100%").height('50vp').padding({left: 20, right: 10})
  .onClick(fn);
};

export {ItemBuilder,}