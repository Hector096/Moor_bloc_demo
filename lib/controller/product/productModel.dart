import 'dart:convert';

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    this.productCount,
    this.products,
  });

  int? productCount;
  List<Product>? products;
  String? error;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        productCount:
            json["ProductCount"] == null ? null : json["ProductCount"],
        products: json["Products"] == null
            ? null
            : List<Product>.from(
                json["Products"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ProductCount": productCount == null ? null : productCount,
        "Products": products == null
            ? null
            : List<dynamic>.from(products!.map((x) => x.toJson())),
      };
      ProductModel.withError(String errorValue) : error = errorValue;
}

class Product {
  Product({
    this.season,
    this.brand,
    this.mood,
    this.gender,
    this.theme,
    this.category,
    this.name,
    this.color,
    this.option,
    this.mrp,
    this.subCategory,
    this.collection,
    this.fit,
    this.description,
    this.qrCode,
    this.fabric,
    this.ean,
    this.finish,
    this.availableSizes,
    this.offerMonths,
    this.productClass,
    this.promoted,
    this.secondary,
    this.deactivated,
    this.material,
    this.quality,
    this.qrCode2,
    this.displayName,
    this.displayOrder,
    this.minQuantity,
    this.maxQuantity,
    this.qpsCode,
    this.image,
    this.imageUrl,
    this.adShoot,
    this.imageAlt,
    this.isCore,
    this.minimumArticleQuantity,
    this.likeabilty,
    this.brandRank,
  });

  String? season;
  String? brand;
  String? mood;
  String? gender;
  String? theme;
  String? category;
  String? name;
  String? color;
  String? option;
  num? mrp;
  String? subCategory;
  String? collection;
  String? fit;
  String? description;
  String? qrCode;
  String? fabric;
  Ean? ean;
  String? finish;
  List<String>? availableSizes;
  List<String>? offerMonths;
  num? productClass;
  bool? promoted;
  bool? secondary;
  bool? deactivated;
  String? material;
  String? quality;
  String? qrCode2;
  String? displayName;
  num? displayOrder;
  num? minQuantity;
  num? maxQuantity;
  String? qpsCode;
  String? image;
  String? imageUrl;
  bool? adShoot;
  String? imageAlt;
  bool? isCore;
  num? minimumArticleQuantity;
  num? likeabilty;
  String? brandRank;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        season: json["Season"] == null ? null : json["Season"],
        brand: json["Brand"] == null ? null : json["Brand"],
        mood: json["Mood"] == null ? null : json["Mood"],
        gender: json["Gender"] == null ? null : json["Gender"],
        theme: json["Theme"] == null ? null : json["Theme"],
        category: json["Category"] == null ? null : json["Category"],
        name: json["Name"] == null ? null : json["Name"],
        color: json["Color"] == null ? null : json["Color"],
        option: json["Option"] == null ? null : json["Option"],
        mrp: json["MRP"] == null ? null : json["MRP"],
        subCategory: json["SubCategory"] == null ? null : json["SubCategory"],
        collection: json["Collection"] == null ? null : json["Collection"],
        fit: json["Fit"] == null ? null : json["Fit"],
        description: json["Description"] == null ? null : json["Description"],
        qrCode: json["QRCode"] == null ? null : json["QRCode"],
        fabric: json["Fabric"] == null ? null : json["Fabric"],
        ean: json["EAN"] == null ? null : Ean.fromJson(json["EAN"]),
        finish: json["Finish"] == null ? null : json["Finish"],
        availableSizes: json["AvailableSizes"] == null
            ? null
            : List<String>.from(json["AvailableSizes"].map((x) => x)),
        offerMonths: json["OfferMonths"] == null
            ? null
            : List<String>.from(json["OfferMonths"].map((x) => x)),
        productClass:
            json["ProductClass"] == null ? null : json["ProductClass"],
        promoted: json["Promoted"] == null ? null : json["Promoted"],
        secondary: json["Secondary"] == null ? null : json["Secondary"],
        deactivated: json["Deactivated"] == null ? null : json["Deactivated"],
        material: json["Material"] == null ? null : json["Material"],
        quality: json["Quality"] == null ? null : json["Quality"],
        qrCode2: json["QRCode2"] == null ? null : json["QRCode2"],
        displayName: json["DisplayName"] == null ? null : json["DisplayName"],
        displayOrder:
            json["DisplayOrder"] == null ? null : json["DisplayOrder"],
        minQuantity: json["MinQuantity"] == null ? null : json["MinQuantity"],
        maxQuantity: json["MaxQuantity"] == null ? null : json["MaxQuantity"],
        qpsCode: json["QPSCode"] == null ? null : json["QPSCode"],
        image: json["Image"] == null ? null : json["Image"],
        imageUrl: json["ImageUrl"] == null ? null : json["ImageUrl"],
        adShoot: json["AdShoot"] == null ? null : json["AdShoot"],
        imageAlt: json["ImageAlt"] == null ? null : json["ImageAlt"],
        isCore: json["IsCore"] == null ? null : json["IsCore"],
        minimumArticleQuantity: json["MinimumArticleQuantity"] == null
            ? null
            : json["MinimumArticleQuantity"],
        likeabilty: json["Likeabilty"] == null ? null : json["Likeabilty"],
        brandRank: json["BrandRank"] == null ? null : json["BrandRank"],
      );

  Map<String, dynamic> toJson() => {
        "Season": season == null ? null : season,
        "Brand": brand == null ? null : brand,
        "Mood": mood == null ? null : mood,
        "Gender": gender == null ? null : gender,
        "Theme": theme == null ? null : theme,
        "Category": category == null ? null : category,
        "Name": name == null ? null : name,
        "Color": color == null ? null : color,
        "Option": option == null ? null : option,
        "MRP": mrp == null ? null : mrp,
        "SubCategory": subCategory == null ? null : subCategory,
        "Collection": collection == null ? null : collection,
        "Fit": fit == null ? null : fit,
        "Description": description == null ? null : description,
        "QRCode": qrCode == null ? null : qrCode,
        "Fabric": fabric == null ? null : fabric,
        "EAN": ean == null ? null : ean!.toJson(),
        "Finish": finish == null ? null : finish,
        "AvailableSizes": availableSizes == null
            ? null
            : List<dynamic>.from(availableSizes!.map((x) => x)),
        "OfferMonths": offerMonths == null
            ? null
            : List<dynamic>.from(offerMonths!.map((x) => x)),
        "ProductClass": productClass == null ? null : productClass,
        "Promoted": promoted == null ? null : promoted,
        "Secondary": secondary == null ? null : secondary,
        "Deactivated": deactivated == null ? null : deactivated,
        "Material": material == null ? null : material,
        "Quality": quality == null ? null : quality,
        "QRCode2": qrCode2 == null ? null : qrCode2,
        "DisplayName": displayName == null ? null : displayName,
        "DisplayOrder": displayOrder == null ? null : displayOrder,
        "MinQuantity": minQuantity == null ? null : minQuantity,
        "MaxQuantity": maxQuantity == null ? null : maxQuantity,
        "QPSCode": qpsCode == null ? null : qpsCode,
        "Image": image == null ? null : image,
        "ImageUrl": imageUrl == null ? null : imageUrl,
        "AdShoot": adShoot == null ? null : adShoot,
        "ImageAlt": imageAlt == null ? null : imageAlt,
        "IsCore": isCore == null ? null : isCore,
        "MinimumArticleQuantity":
            minimumArticleQuantity == null ? null : minimumArticleQuantity,
        "Likeabilty": likeabilty == null ? null : likeabilty,
        "BrandRank": brandRank == null ? null : brandRank,
      };
}

class Ean {
  Ean({
    this.the2830,
    this.the2832,
    this.the2834,
    this.the2930,
    this.the2932,
    this.the2934,
    this.the3030,
    this.the3032,
    this.the3034,
    this.the3130,
    this.the3132,
    this.the3134,
    this.the3230,
    this.the3232,
    this.the3234,
    this.the3330,
    this.the3332,
    this.the3334,
    this.the3430,
    this.the3432,
    this.the3434,
    this.the3630,
    this.the3632,
    this.the3634,
    this.the3830,
    this.the3832,
    this.the3834,
    this.the4030,
    this.the4032,
    this.the4034,
    this.the4232,
    this.the4234,
  });

  String? the2830;
  String? the2832;
  String? the2834;
  String? the2930;
  String? the2932;
  String? the2934;
  String? the3030;
  String? the3032;
  String? the3034;
  String? the3130;
  String? the3132;
  String? the3134;
  String? the3230;
  String? the3232;
  String? the3234;
  String? the3330;
  String? the3332;
  String? the3334;
  String? the3430;
  String? the3432;
  String? the3434;
  String? the3630;
  String? the3632;
  String? the3634;
  String? the3830;
  String? the3832;
  String? the3834;
  String? the4030;
  String? the4032;
  String? the4034;
  String? the4232;
  String? the4234;

  factory Ean.fromJson(Map<String, dynamic> json) => Ean(
        the2830: json["28 30"] == null ? null : json["28 30"],
        the2832: json["28 32"] == null ? null : json["28 32"],
        the2834: json["28 34"] == null ? null : json["28 34"],
        the2930: json["29 30"] == null ? null : json["29 30"],
        the2932: json["29 32"] == null ? null : json["29 32"],
        the2934: json["29 34"] == null ? null : json["29 34"],
        the3030: json["30 30"] == null ? null : json["30 30"],
        the3032: json["30 32"] == null ? null : json["30 32"],
        the3034: json["30 34"] == null ? null : json["30 34"],
        the3130: json["31 30"] == null ? null : json["31 30"],
        the3132: json["31 32"] == null ? null : json["31 32"],
        the3134: json["31 34"] == null ? null : json["31 34"],
        the3230: json["32 30"] == null ? null : json["32 30"],
        the3232: json["32 32"] == null ? null : json["32 32"],
        the3234: json["32 34"] == null ? null : json["32 34"],
        the3330: json["33 30"] == null ? null : json["33 30"],
        the3332: json["33 32"] == null ? null : json["33 32"],
        the3334: json["33 34"] == null ? null : json["33 34"],
        the3430: json["34 30"] == null ? null : json["34 30"],
        the3432: json["34 32"] == null ? null : json["34 32"],
        the3434: json["34 34"] == null ? null : json["34 34"],
        the3630: json["36 30"] == null ? null : json["36 30"],
        the3632: json["36 32"] == null ? null : json["36 32"],
        the3634: json["36 34"] == null ? null : json["36 34"],
        the3830: json["38 30"] == null ? null : json["38 30"],
        the3832: json["38 32"] == null ? null : json["38 32"],
        the3834: json["38 34"] == null ? null : json["38 34"],
        the4030: json["40 30"] == null ? null : json["40 30"],
        the4032: json["40 32"] == null ? null : json["40 32"],
        the4034: json["40 34"] == null ? null : json["40 34"],
        the4232: json["42 32"] == null ? null : json["42 32"],
        the4234: json["42 34"] == null ? null : json["42 34"],
      );

  Map<String, dynamic> toJson() => {
        "28 30": the2830 == null ? null : the2830,
        "28 32": the2832 == null ? null : the2832,
        "28 34": the2834 == null ? null : the2834,
        "29 30": the2930 == null ? null : the2930,
        "29 32": the2932 == null ? null : the2932,
        "29 34": the2934 == null ? null : the2934,
        "30 30": the3030 == null ? null : the3030,
        "30 32": the3032 == null ? null : the3032,
        "30 34": the3034 == null ? null : the3034,
        "31 30": the3130 == null ? null : the3130,
        "31 32": the3132 == null ? null : the3132,
        "31 34": the3134 == null ? null : the3134,
        "32 30": the3230 == null ? null : the3230,
        "32 32": the3232 == null ? null : the3232,
        "32 34": the3234 == null ? null : the3234,
        "33 30": the3330 == null ? null : the3330,
        "33 32": the3332 == null ? null : the3332,
        "33 34": the3334 == null ? null : the3334,
        "34 30": the3430 == null ? null : the3430,
        "34 32": the3432 == null ? null : the3432,
        "34 34": the3434 == null ? null : the3434,
        "36 30": the3630 == null ? null : the3630,
        "36 32": the3632 == null ? null : the3632,
        "36 34": the3634 == null ? null : the3634,
        "38 30": the3830 == null ? null : the3830,
        "38 32": the3832 == null ? null : the3832,
        "38 34": the3834 == null ? null : the3834,
        "40 30": the4030 == null ? null : the4030,
        "40 32": the4032 == null ? null : the4032,
        "40 34": the4034 == null ? null : the4034,
        "42 32": the4232 == null ? null : the4232,
        "42 34": the4234 == null ? null : the4234,
      };
}
