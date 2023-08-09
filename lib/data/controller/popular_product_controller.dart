import 'package:food_app/data/repository/popular_product_repo.dart';
import 'package:food_app/model/product_model.dart';
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
List<ProductModel> _popularProductList = [];//this private
List<ProductModel> get popularProductList => _popularProductList; //need this to access from anywhere in the app.
//create a function to show the list.
 Future<void> getPopularProductList()async {
   print("started");
   Response response = await popularProductRepo.getPopularProductList();
   print(response.bodyString);
 if(response.statusCode==200){
   print("got products");
   _popularProductList = [];
   _popularProductList.addAll(Product.fromJson(response.body).products);
  print(_popularProductList);
   update(); //like setstate
 }else{

 }
 }
}