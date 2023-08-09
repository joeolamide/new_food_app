
import 'package:food_app/data/api/api_client.dart';
import 'package:food_app/data/controller/popular_product_controller.dart';
import 'package:food_app/data/repository/popular_product_repo.dart';
import 'package:food_app/utils/app_constansts.dart';
import 'package:get/get.dart';


//create the init() method firstly;

Future<void> init() async{
  //creating connection for api,repo and controller.
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //for repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //for controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));

}