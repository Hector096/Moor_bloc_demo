import 'package:qartfashion/controller/product/productClient.dart';
import 'package:qartfashion/controller/product/productDb.dart';
import 'package:qartfashion/controller/product/productModel.dart';

class ProductRepo {
  ProductClient client = ProductClient();

  Future<List<Product>> getProducts() async {
    ProductModel? data = await client.getProducts();
    if (data?.error == null) {
      data?.products?.map((e) async {
        final res = await DBProvider.db.insertProducts(e);
        print("RES: $res");
      }).toList();
      // var result = DBProvider.db.getAllProducts();
      // print(result.toString());
      return [];
    } else {
      return [];
    }
  }
}
