
class User{
  userName: string
  password: string
  nickName: string | null
  realName: string | null
  phone: string | null
  identityNum: number | null
  address: string | null
  role: string
  createTime: string
  updateTime: string
  integral: number
  credit: number
  avatar: string | null
}

class Address{
  ownName: string
  consignee: string // 收货地址
  phone: string
  addressDetail: string
  isDefault: boolean
}

class Expert{
  userName: string
  realName: string
  phone: string
  profession: string
  position: string
  belong: string
}

class Discuss{
  discussId: number
  knowledgeId: number
  ownName: string
  content: string
  createdTime: string
}

class Knowledge{
  title: string
  content: string
  picPath: string
  ownName: string
  createdTime: string
  updatedTime: string
}

class Order{
  orderId: number
  title: string
  price: string
  content: string
  orderStatus: number
  type: string
  picture: string
  ownName: string
  cooperationName: string
  createTime: string
  updateTime: string
  address: string
}

class Purchase{
  purchaseId: number
  ownName: string
  purchaseType: number
  totalPrice: number
  address: string
  purchaseStatus: string
  createTime: string
  updateTime: string
}

class PurchaseDetail{
  detailId: number
  purchaseId: number
  orderId: number
  uninPrice: number
  sumPrice: number
  count: number
}

class Question{
  id: number
  expertName: string
  questioner: string
  phone: string
  plantName: string
  title: string
  question: string
  answer: string
  status: number
}

class Recommend{
  userName: string
  realName: string
  phone: string
  address: string
  avatar: string
  area: number
  item: string
  amount: string
  num: number
}

class Reserve{
  id: number
  expertName: string
  questioner: string
  area: string
  address: string
  plantName: string
  soilCondition: string
  plantCondition: string
  plantDetail: string
  phone: string
  message: string
  answer: string
  status: number
}

class SellPurchase {
  sellPurchaseId: number
  purchaseId: number
  orderId: number
  ownName: string
  purchaseType: number
  uninPricee: number
  sumPrice: number
  address: string
  phone: string
  purchaseStatus: number
  createTime: string
  updateTime: string
}

class ShoppingCart{
  shoppingId: number
  orderId: number
  count: number
  ownName: string
  createTime: string
  updateTime: string
}
