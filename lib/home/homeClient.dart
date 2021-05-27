
// import 'package:challenge/product/productModel.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;


// class HomeClient {
//    Future<ProductModel?> getProducts() async {
//     try {
//       var queryParameters = {'retailerCode': '40984'};
//       var url = Uri.http("https://debug.qart.fashion/api/product",
//           "/GetProductsWithSizes", queryParameters);
//       var response =
//           await http.get(url, headers: {"Content-Type": "application/json"});
//       if (response.statusCode == 200) {
//         var jsonResponse = convert.jsonDecode(response.body);
//         return ProductModel.fromJson(jsonResponse);
//       }
//     } catch (e) {
//       print("Error Login $e");
//       ProductModel.withError(e.toString());
//     }
//   }
// }















