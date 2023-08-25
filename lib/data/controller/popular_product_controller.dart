import 'package:flutter/material.dart';
import 'package:food_app/data/controller/cart_controller.dart';
import 'package:food_app/data/repository/popular_product_repo.dart';
import 'package:food_app/model/cart_model.dart';
import 'package:food_app/model/product_model.dart';
import 'package:food_app/utils/colors.dart';
import 'package:get/get.dart';
//create the class.
class PopularProductController extends GetxController{

  //link the popularProduct repo to this controller.
final PopularProductRepo popularProductRepo;

//create the constructor.
  PopularProductController({required this.popularProductRepo});

  //purpose of this app/file/code is to show list of the product from the repo file.
  //we gat create a list to show it.
  //repo puts the data in the list.
List<dynamic> _popularProductList = [];//this private
List<dynamic> get popularProductList => _popularProductList; //need this to access from anywhere in the app.
late CartController _cart;
//to show the loading stuff
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;
      //To set the product quantity.
  int _quantity = 0;
  int get quantity => _quantity;

  //getting saved items in the cart.
  int _inCartItems = 0;
  int get inCartItems => _inCartItems + _quantity;

//create a function to show the list.
 Future<void> getPopularProductList()async {
   //print("started");
   Response response = await popularProductRepo.getPopularProductList();
   //print(response.bodyString);
 if(response.statusCode==200){
  //print("got productsxxxx");
   _popularProductList = [];
   _popularProductList.addAll(Product.fromJson(response.body).products);
  //print(_popularProductList);
  //print(response.bodyString);


  _isLoaded= true;
   update(); //like setstate
 }else{
    print("not good");
 }
 }

//we have to create a function that will help
//increase and decrease the quantity of product sent to
//cart screen.

void setQuantity(bool isIncrement){
   if(isIncrement){
     _quantity = checkQuantity(_quantity + 1);
     //print("no of items is: " + _quantity.toString());

   }else{
     //print("decrement is: " + _quantity.toString());
     _quantity = checkQuantity(_quantity - 1);

   }
   update();
}
 int checkQuantity(int quantity){
   if((_inCartItems+quantity)<0){
     Get.snackbar("Item Count", "Minimum amount of order you can make is 1!!!",
     backgroundColor: AppColors.mainColor,
       colorText: Colors.white,
     );
     if(_inCartItems>0){
       _quantity = -inCartItems;
       return _quantity;
     }
     return 0;
   }else if ((_inCartItems+quantity)> 20){
     Get.snackbar("Item Count", "Maximum amount of order you can make is 20!!!",
       backgroundColor: AppColors.mainColor,
       colorText: Colors.white,
     );
     return 20;
   } else{
     return quantity;
   }
}
void initProduct(ProductModel product, CartController cart){
   _quantity = 0;
   _inCartItems=0;
   _cart = cart;
    var exist = false;
    exist = _cart.existInCart(product); //if it exist in cart
   print("exist or not: " + exist.toString());
   if(exist){
     _inCartItems = _cart.getQuantity(product);
   }
   print("the quantity in the cart is:" + _inCartItems.toString());
}


void addItem(ProductModel product){
   //this is to call the cart controller.
    _cart.addItem(product, _quantity);
    _quantity=0;
    _inCartItems=_cart.getQuantity(product);
    _cart.items.forEach((key, value) {
      print("The id is " + value.id.toString()+ " The quantity is " + value.quantity.toString());
    });


  update();
}

int get totalItems{
   return _cart.totalItems;
}

List<CartModel> get getItems {
   return _cart.getItems;
}
}