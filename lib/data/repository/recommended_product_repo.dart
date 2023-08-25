import 'package:food_app/utils/app_constansts.dart';
import 'package:get/get.dart';
import 'package:food_app/data/api/api_client.dart';

//repo talks to the api-client, needs internet service
// reason for getxService
class RecommendedProductRepo extends GetxService{
//repo should have access to the api-client method
//for both get and post request.
  final ApiClient apiClient;
//create the constructor body
  RecommendedProductRepo({required this.apiClient});
//create an empty method to get response.


  //create a get method in the api-client and call it below
  Future<Response> getRecommendedProductList() async{
//needs to call api-client first.
    return await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
  }
}