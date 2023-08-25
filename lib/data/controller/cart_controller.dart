import 'package:flutter/material.dart';
import 'package:food_app/data/repository/cart_repo.dart';
import 'package:food_app/model/cart_model.dart';
import 'package:food_app/model/product_model.dart';
import 'package:food_app/utils/colors.dart';
import 'package:get/get.dart';

class CartController extends GetxController{
  final CartRepo cartRepo;

  CartController({required this.cartRepo});

  //create a map for
Map<int, CartModel> _items = {};

  Map<int, CartModel> get items => _items;

//to add item to the cart
void addItem(ProductModel product, int quantity){
  var totalQuantity = 0;
  if(_items.containsKey(product.id!)){
    _items.update(product.id!, (value) {
      totalQuantity=value.quantity!+quantity;
      return  CartModel(
        id: value.id,
        name: value.name,
        price: value.price,
        img: value.img,
        quantity: value.quantity! + quantity,
        isExist: true,
        time: DateTime.now().toString(),


      );
    });
    if(totalQuantity<=0){
      _items.remove(product.id);
    }
  }else{
    if(quantity>0){
      _items.putIfAbsent(product.id!, () {
        return CartModel(
          id: product.id,
          name: product.name,
          price: product.price,
          img: product.img,
          quantity: quantity,
          isExist: true,
          time: DateTime.now().toString(),


        );});
    }else{
      Get.snackbar("Item Count", "Add a product to the cart!!!",
              backgroundColor: AppColors.mainColor,
               colorText: Colors.white,
             );
    }
  }


}


//we wanna check if the id of the
//product in product model and cart model are same.
 bool existInCart(ProductModel product){
  if(_items.containsKey(product.id)){
    return true;
  }
  return false;
 }


//this method/function is to get the quantity saved in the cart.
int getQuantity(ProductModel product){
  var quantity = 0;
  if(_items.containsKey(product.id)){
    _items.forEach((key, value) {
      if(key==product.id){
        quantity = value.quantity!;
      }
    });
  }
  return quantity;
}

//to grt tottal items and show on the cart icon.
int get totalItems{
  var totalQuantity=0;
  _items.forEach((key, value) {
    totalQuantity += value.quantity!;
  });
  return totalQuantity;
}

List<CartModel> get getItems{
  return _items.entries.map((e){
    return e.value;
  }).toList();
}

}