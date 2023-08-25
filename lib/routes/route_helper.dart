import 'package:food_app/pages/cart/cart_page.dart';
import 'package:food_app/pages/food/popular_food_detail.dart';
import 'package:food_app/pages/food/recommended_food_detail.dart';
import 'package:food_app/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper{
    static const String initial = '/';
    static const String popularFood = '/popular-food';
    static const String recommendedFood = '/recommended-food';
    static const String cartPage = "/cart-page";
    //below code allows us to create parameters.
    //remember parameters can only be found in a function.
    //arrow function.
    static String getInitial()=> '$initial';
    static String getPopularFood(int pageId)=> '$popularFood?pageId=$pageId';
    static String getRecommendedFood(int pageId)=> '$recommendedFood?pageId=$pageId';
    static String getCartPage()=> '$cartPage';
    //create a list of the screen pages.
  static List<GetPage> routes = [
    //initial list
    GetPage(name: initial, page: ()=> MainFoodPage()),

    //popular-food list
    GetPage(name: popularFood, page: (){
      var pageId= Get.parameters['pageId'];
      return PopularFoodDetail(pageId: int.parse(pageId!),);
      },
      transition: Transition.fadeIn,
    ),

    //recommended-food list
    GetPage(name: recommendedFood, page: (){
      var pageId= Get.parameters['pageId'];
      return RecommendedFoodDetail(pageId: int.parse(pageId!));
    },
      transition: Transition.fadeIn,
    ),

    GetPage(name: cartPage, page: (){
      return CartPage();
    },
      transition: Transition.fadeIn,
    ),
  ];
}