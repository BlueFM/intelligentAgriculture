
import router from '@ohos.router';
import promptAction from '@ohos.promptAction';
import {getCartList, addToCart, deleteCartGoods, buyGoods, updateCartGoodsInfo, getAllAddress, getDefaultAddress} from '../../api/cart'
import {serverIp} from '../../utils'
import thermal from '@ohos.thermal';

@Preview
@Component
struct ShoppingCartPage{

  @State goodsLength: number = 0;
  @State goodsSrc: Array<any> = [];


  getCartInfo(){
    getCartList().then(
      (rst) => {
        let carData = JSON.parse(rst.result.toString());
        for (let i = 0; i < carData.length; i++){
          let item = carData[i];
          let newItem ={
            shoppingId: item.shoppingId,
            content: item.content,
            count: item.count,
            orderId: item.orderId,
            ownName: item.ownName,
            picture: item.picture,
            price: item.price,
            isSelected: false,
            title: item.title
          }
          this.goodsSrc.push(newItem)
        }
        this.goodsLength = this.goodsSrc.length

      }
    )
  };

  aboutToAppear(){
    this.getCartInfo()

  };

  build(){
    Column() {
      if(!globalThis.token){
        Column(){
          Image($r('app.media.illustration_3x')).width(200).height(200);
          Text("未登录").fontSize(20).fontColor(Color.Gray).margin({top:30});
          Text("请先登录").fontSize(24).fontColor(Color.Black);
          Button("登录").margin({top:20}).width(120).height(50).borderRadius(25)
            .onClick(()=> router.pushUrl({url: "pages/login"}))
        }
      }else{
        if(this.goodsLength == 0){
          Column(){
            Image($r('app.media.illustration_3x')).width(200).height(200);
            Text("购物车是空的").fontSize(20).fontColor(Color.Gray).margin({top:30});
            Text("快去看看吧").fontSize(24).fontColor(Color.Black);
            Button("去购物").margin({top:20}).width(120).height(50).borderRadius(25)
              .onClick(
                // ()=> router.pushUrl({url: "pages/login"})
                () => promptAction.showToast({message: '在购物'})
              )
          }
        }else{
          Text(this.goodsLength.toString())
        }

      }

    }
  }
};

export {ShoppingCartPage,};