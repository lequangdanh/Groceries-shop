

import 'package:fruit_shop/modal/product.dart';
import 'package:fruit_shop/request/request_api.dart';
import 'package:get/get.dart';



class Controller extends GetxController{
  List<Product> listData=<Product>[];
  String first_name='Tony';
  //List<int> listRandom=[];
  bool isLoading = false;
  int quantity=1;
  void onInit() {

    super.onInit();
    getData();
  }
  @override
  void getData() async{
    isLoading = true;
    update();
    var result= await RequestApi.getProduct();
    if(result!=null){
      listData=result;
      update();

    }else{
      print('error');
    }
    isLoading = false;
    update();
  }

  void getName(String name){
    first_name=name;
    update();
  }

  void Increment(){
    quantity++;
    update();
  }
  void Decrement(){
    if(quantity==0){
      Get.back();
      update();
    }else{
      quantity--;
      update();
    }
  }
  void updateQuantity(){
    quantity=1;
    update();
  }
}