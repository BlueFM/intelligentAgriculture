
import router from '@ohos.router';
import promptAction from '@ohos.promptAction';
import { getCartList } from '../../api/cart';

@Preview
@Component
struct ShoppingCartPage{

  @State cartList: any = null
  build(){

  if(globalThis.token){
   
  }else{
    Column(){
      Image($r('app.media.illustration')).width(200).height(200);
      Text("未登录").fontSize(20).fontColor(Color.Gray).margin({top:30});
      Text("请先登录").fontSize(24).fontColor(Color.Black);
      Button("登录").margin({top:20}).width(120).height(50).borderRadius(25)
        .onClick(()=> router.pushUrl({url: "pages/login"}))
    }
  }
  };
};

export {ShoppingCartPage,};