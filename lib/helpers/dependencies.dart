
import 'package:food_app/data/api/api_client.dart';
import 'package:food_app/data/controller/cart_controller.dart';
import 'package:food_app/data/controller/popular_product_controller.dart';
import 'package:food_app/data/controller/recommended_product_controller.dart';
import 'package:food_app/data/repository/cart_repo.dart';
import 'package:food_app/data/repository/popular_product_repo.dart';
import 'package:food_app/data/repository/recommended_product_repo.dart';
import 'package:food_app/utils/app_constansts.dart';
import 'package:get/get.dart';


//create the init() method firstly;

Future<void> init() async{
  //creating connection for api,repo and controller.
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //for repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(()=> CartRepo());
  //for controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(()=> CartController(cartRepo: Get.find()));

}