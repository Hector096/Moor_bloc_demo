import 'dart:convert' as convert;
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qartfashion/controller/product/productModel.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  static Database? _database;
  static final DBProvider db = DBProvider._();

  DBProvider._();

  Future<Database> get database async {
    // If database exists, return database
    if (_database != null) return _database!;

    // If database don't exists, create one
    _database = await initDB();

    return _database!;
  }

  // Create the database and the Employee table
  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'products.db');

    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute('''CREATE TABLE Products(
       id INTEGER PRIMARY KEY AUTOINCREMENT,
          Season TEXT,
          Brand TEXT,
          Mood TEXT,
          Gender TEXT,
          Theme TEXT,
          Category TEXT,
          Name TEXT,
          Color TEXT,
          Option TEXT,
          MRP REAL,
          SubCategory TEXT,
          Collection TEXT,
          Fit TEXT,
          Description TEXT,
          QRCode TEXT,
          Fabric TEXT,
          EAN Text,
          Finish TEXT,
          AvailableSizes Text,
          OfferMonths Text,
          ProductClass REAL,
          Promoted TEXT,
          Secondary TEXT,
          Deactivated TEXT,
          Material TEXT,
          Quality TEXT,
          QRCode2 TEXT,
          DisplayName TEXT,
          DisplayOrder REAL,
          MinQuantity REAL,
          MaxQuantity REAL,
          QPSCode TEXT,
          Image TEXT,
          ImageUrl TEXT,
          AdShoot TEXT,
          imageAlt TEXT,
          IsCore TEXT,
          MinimumArticleQuantity REAL,
          Likeabilty REAL,
          BrandRank TEXT
          )
          ''');
    });
  }

  Future<int> deleteAllProducts() async {
    final db = await database;
    final res = await db.rawDelete('DELETE FROM Products');

    return res;
  }

  String convertTOString(Ean ean) {
    String jsonEncode1 = convert.jsonEncode(ean);
    return jsonEncode1;
  }

  String convertToString1(List<String> list) {
    String json1 = convert.jsonEncode(list);
    return json1;
  }

   insertProducts(Product product) async {
    final db = await database;
    // Map<String,dynamic> row = ;
    final res = await db.rawInsert(
        'INSERT INTO Products(Season,Brand, Mood,Gender,Theme,Category, Name,Color,Option, MRP,SubCategory,Collection,Fit,Description,QRCode,Fabric,EAN,Finish,AvailableSizes,OfferMonths,ProductClass,Promoted ,Secondary ,Deactivated ,Material ,Quality ,QRCode2 ,DisplayName ,DisplayOrder ,MinQuantity ,MaxQuantity ,QPSCode ,Image ,ImageUrl ,AdShoot ,imageAlt ,IsCore ,MinimumArticleQuantity, Likeabilty,BrandRank ) VALUES("${product.season}", "${product.brand}", "${product.mood}","${product.gender}","${product.theme}","${product.category}","${product.name}","${product.color}","${product.option}",${product.mrp},"${product.subCategory}","${product.collection}","${product.fit}","${product.description}","${product.qrCode}","${product.fabric}","${convertTOString(product.ean!)}","${product.finish}","${convertToString1(product.availableSizes!)}","${convertToString1(product.offerMonths!)}",${product.productClass},"${product.promoted}","${product.secondary}","${product.deactivated}","${product.material}","${product.quality}","${product.qrCode2}","${product.displayName}",${product.displayOrder},${product.minQuantity},${product.maxQuantity},"${product.qpsCode}","${product.image}","${product.imageUrl}","${product.adShoot}","${product.imageAlt}","${product.isCore}",${product.minimumArticleQuantity},${product.likeabilty},"${product.brandRank}")');
    return res;
  }

  Future<List<Product>> getAllProducts() async {
    final db = await database;
    final res = await db.rawQuery("SELECT * FROM Products");

    List<Product> list =
        res.isNotEmpty ? res.map((c) => Product.fromJson(c)).toList() : [];

    return list;
  }
}
