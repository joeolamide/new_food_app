//create the api body/client like that color stuff.

import 'package:food_app/utils/app_constansts.dart';
import 'package:get/get.dart';
import 'package:get/get_connect.dart';

class ApiClient extends GetConnect implements GetxService{
  //create data/variables for initialization.
  //when talking to a server we gat have a token, and it must
  //be initialized in the api-client.

  //also have the app url,that gonna talk to the server.
  //server url.
   late String token;
  final String appBaseUrl;
  late Map<String, String> _mainHeaders;
  //create a constructor the api-client.
ApiClient({required this.appBaseUrl}){
  //constructor body.
  baseUrl = appBaseUrl;
  timeout = Duration(seconds: 30);
  //never forget to initailise a late variable.
  token = AppConstants.TOKEN;

  //purpose of the header is to mention the url for every
  //communication of the api to the server be it post or
  //get request.
  _mainHeaders = {
    'Content-type': 'application/json; charset= UTF-8 ', //post and get request
    'Authorization' : 'Bearer $token', //lot of post request, specify the token type. authentication stuff
  };
}


//Time to create get method.
//to be able to get data from the server.
//String uri => url of the server.
Future<Response> getData(String uri,) async {
  print("nnnnnnnn");
  try{
    //when it gets the data, saves in Response response.
    Response response = await get(uri);
    //print(response);
    return response;

  }catch(e){
    //else returns error via the error code.
    return Response(statusCode: 1, statusText: e.toString());
  }
}
}