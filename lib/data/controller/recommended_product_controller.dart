import 'package:food_app/data/repository/popular_product_repo.dart';
import 'package:food_app/data/repository/recommended_product_repo.dart';
import 'package:food_app/model/product_model.dart';
import 'package:get/get.dart';
//create the class.
class RecommendedProductController extends GetxController{
  //link the popularProduct repo to this controller.
  final RecommendedProductRepo recommendedProductRepo;
//create the constructor.
  RecommendedProductController({required this.recommendedProductRepo});
  //purpose of this app/file/code is to show list of the product from the repo file.
//we gat create a list to show it.
  //repo puts the data in the list.
  List<ProductModel> _recommendedProductList = [];//this private
  List<ProductModel> get recommendedProductList => _recommendedProductList; //need this to access from anywhere in the app.
//to show the loading stuff
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

//create a function to show the list.
  Future<void> getRecommendedProductList()async {
    //print("started");
    Response response = await recommendedProductRepo.getRecommendedProductList();
   // print(response.bodyString);
    if(response.statusCode==200){
    //  print("got productsxxxx");
      _recommendedProductList = [];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      //print(_popularProductList);
      //print(response.bodyString);


      _isLoaded= true;
      update(); //like setstate
    }else{
      print("not good");
    }
  }
}