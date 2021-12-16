import 'package:fruit_shop/modal/basket.dart';
import 'package:get/get.dart';


class BasketController extends GetxController{

  Map<int, Basket> _items = {};
  int cart=0;
  Map<int, Basket> get items {
    return {..._items};
  }

  int get itemCount{
    return _items.length;
  }
  int get totalItem{
    var total = 0;
    _items.forEach((key, value) {
      total += value.price * value.quantity;
    });
    return total;
  }
  void addItem(int productId,int price,int index,String title,int quantity,String imageUrl,String color,String id){
    if(_items.containsKey(productId)){
      _items.update(productId, (value) => Basket(
          title: value.title,
          imageUrl: value.imageUrl,
          price: value.price,
          index: value.index,
          quantity: quantity,

          color: value.color,
        id: value.id,
      ));
      update();
    }else{
      cart++;
      _items.putIfAbsent(productId, () => Basket(
          title: title,
          imageUrl: imageUrl,
          price: price,
          index: index,
          quantity: quantity,

          color: color,
        id: id,
      ));
      update();
    }
    update();
  }
  void removeitem(int productId){
    cart--;
    update();
    _items.remove(productId);
    update();
  }

  void clear(){
    _items = {};
    cart=0;
    update();
  }
}