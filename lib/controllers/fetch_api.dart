import 'package:http/http.dart' as http;
import 'package:shop_api/models/products.dart';

class WebServices{
  static Future<List<ProductModel>> getProduct() async{
  String apiUrl = "https://makeup-api.herokuapp.com/api/v1/products.json";
      var res = await http.get(Uri.parse(apiUrl));
      if(res.statusCode==200){
      return productModelFromJson(res.body);
      
      } else{
        return [];
      }
  }
}