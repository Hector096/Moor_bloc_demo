import 'dart:convert';

import 'package:qartfashion/controller/product/productClient.dart';
import 'package:qartfashion/controller/product/productModel.dart';
import 'package:qartfashion/controller/product/product_database.dart';

class ProductRepo {
  ProductClient client = ProductClient();

  Future<List<Product>> getProducts() async {
    ProductModel? data = await client.getProducts();
    final db = ProductDatabase();

    if (data?.error == null) {
      db.productDao.deleteAllProducts();
      data?.products?.map((e) async {
        Ean? es = e.ean;
        String jsonString = jsonEncode(es);
        Product? product = Product(
          brand: e.brand,
          ean: jsonString,
          brandRank: e.brandRank,
          adShoot: e.adShoot,
          availableSizes: listToString(e.availableSizes),
          imageAlt: e.imageAlt,
          fabric: e.fabric,
          minimumArticleQuantity: e.minimumArticleQuantity!.toDouble(),
          mrp: e.mrp!.toDouble(),
          secondary: e.secondary,
          qpsCode: e.qpsCode,
          qrCode2: e.qrCode2,
          qrCode: e.qrCode,
          quality: e.quality,
          maxQuantity: e.maxQuantity!.toDouble(),
          minQuantity: e.minQuantity!.toDouble(),
          subCategory: e.subCategory,
          theme: e.theme,
          productClass: e.productClass!.toDouble(),
          likeabilty: e.likeabilty!.toDouble(),
          gender: e.gender,
          finish: e.finish,
          fit: e.fit,
          deactivated: e.deactivated,
          description: e.description,
          displayName: e.displayName,
          displayOrder: e.displayOrder!.toDouble(),
          category: e.category,
          collection: e.collection,
          color: e.color,
          name: e.name,
          material: e.material,
          mood: e.mood,
          offerMonths: listToString(e.offerMonths),
          option: e.option,
          image: e.image,
          imageUrl: e.imageUrl,
          isCore: e.isCore,
        );
        db.productDao.insertProduct(product);
      }).toList();

      return db.productDao.getAllProducts();
    } else {
      return [];
    }
  }

  listToString(List<String>? list) {
    String jsonString = jsonEncode(list);
    return jsonString;
  }
}
