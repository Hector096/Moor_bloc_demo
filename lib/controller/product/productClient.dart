import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:qartfashion/controller/product/productModel.dart';

class ProductClient {
  Future<ProductModel?> getProducts() async {
    try {
      var queryParameters = {'retailerCode': '40984'};
      var url = Uri.https("debug.qart.fashion",
          "/api/product/GetProductsWithSizes", queryParameters);
      var response =
          await http.get(url, headers: {"Content-Type": "application/json"});
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body);
        
        List<ProductFromAPI>? productss = [];
        ProductModel data = ProductModel.fromJson(jsonResponse);
        for (var i = 0; i <= 100; i++) {
          productss.add(data.products![i]);
        }
        ProductModel list = ProductModel(products: productss, productCount: 100);
        return list;
      }
    } catch (e) {
      ProductModel.withError(e.toString());
    }
  }
}
