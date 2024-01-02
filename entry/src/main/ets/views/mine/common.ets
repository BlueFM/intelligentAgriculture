type emptyFn = ()=>void;
const EmptyFunction: emptyFn = ()=>{};

@Builder
function ItemBuilder(
    icon:Resource,
    title: string,
    fn: emptyFn = EmptyFunction
){
  Row(){
<<<<<<< HEAD
    Image(icon).width(20).height(20).margin({right:10});
    Text(title).width(64).height(20).fontSize(16).fontColor("#0F102A")
      .fontWeight(400).flexGrow(1);
    Image($r('app.media.chevron_right')).width(20).height(20).margin({right:10});
  }.width("100%").height('50vp').padding({left: 20, right: 10})
=======
    Image(icon).width(15).height(15).margin({right:10});
    Text(title).width(64).height(15).fontSize(14).fontColor("#0F102A")
      .fontWeight(400).flexGrow(1);
    Image($r('app.media.chevron_right')).width(15).height(15).margin({right:10});
  }.width("100%").height('45vp').padding({left: 20, right: 10})
>>>>>>> c4807134a72268a899f771a5dc558528ec6dfb87
  .onClick(fn);
};

export {ItemBuilder,}