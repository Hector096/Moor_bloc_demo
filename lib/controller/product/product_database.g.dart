// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Product extends DataClass implements Insertable<Product> {
  final String? brand;
  final String? mood;
  final String? gender;
  final String? theme;
  final String? category;
  final String? name;
  final String? color;
  final String? option;
  final double? mrp;
  final String? subCategory;
  final String? collection;
  final String? fit;
  final String? description;
  final String? qrCode;
  final String? ean;
  final String? fabric;
  final String? finish;
  final String? availableSizes;
  final String? offerMonths;
  final double? productClass;
  final bool? secondary;
  final bool? deactivated;
  final String? material;
  final String? quality;
  final String? qrCode2;
  final String? displayName;
  final double? displayOrder;
  final double? minQuantity;
  final double? maxQuantity;
  final String? qpsCode;
  final String? image;
  final String? imageUrl;
  final bool? adShoot;
  final String? imageAlt;
  final bool? isCore;
  final double? minimumArticleQuantity;
  final double? likeabilty;
  final String? brandRank;
  Product(
      {required this.brand,
      required this.mood,
      required this.gender,
      required this.theme,
      required this.category,
      required this.name,
      required this.color,
      required this.option,
      required this.mrp,
      required this.subCategory,
      required this.collection,
      required this.fit,
      required this.description,
      required this.qrCode,
      required this.ean,
      required this.fabric,
      required this.finish,
      required this.availableSizes,
      required this.offerMonths,
      required this.productClass,
      required this.secondary,
      required this.deactivated,
      required this.material,
      required this.quality,
      required this.qrCode2,
      required this.displayName,
      required this.displayOrder,
      required this.minQuantity,
      required this.maxQuantity,
      required this.qpsCode,
      required this.image,
      required this.imageUrl,
      required this.adShoot,
      required this.imageAlt,
      required this.isCore,
      required this.minimumArticleQuantity,
      required this.likeabilty,
      required this.brandRank});
  factory Product.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Product(
      brand: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}brand'])!,
      mood: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mood'])!,
      gender: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}gender'])!,
      theme: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}theme'])!,
      category: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      color: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}color'])!,
      option: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}option'])!,
      mrp: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mrp'])!,
      subCategory: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sub_category'])!,
      collection: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}collection'])!,
      fit: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fit'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      qrCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}qr_code'])!,
      ean: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ean'])!,
      fabric: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fabric'])!,
      finish: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}finish'])!,
      availableSizes: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}available_sizes'])!,
      offerMonths: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}offer_months'])!,
      productClass: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}product_class'])!,
      secondary: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}secondary'])!,
      deactivated: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deactivated'])!,
      material: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}material'])!,
      quality: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}quality'])!,
      qrCode2: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}qr_code2'])!,
      displayName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}display_name'])!,
      displayOrder: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}display_order'])!,
      minQuantity: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}min_quantity'])!,
      maxQuantity: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}max_quantity'])!,
      qpsCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}qps_code'])!,
      image: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image'])!,
      imageUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image_url'])!,
      adShoot: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ad_shoot'])!,
      imageAlt: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image_alt'])!,
      isCore: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_core'])!,
      minimumArticleQuantity: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}minimum_article_quantity'])!,
      likeabilty: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}likeabilty'])!,
      brandRank: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}brand_rank'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['brand'] = Variable<String>(brand!);
    map['mood'] = Variable<String>(mood!);
    map['gender'] = Variable<String>(gender!);
    map['theme'] = Variable<String>(theme!);
    map['category'] = Variable<String>(category!);
    map['name'] = Variable<String>(name!);
    map['color'] = Variable<String>(color!);
    map['option'] = Variable<String>(option!);
    map['mrp'] = Variable<double>(mrp!);
    map['sub_category'] = Variable<String>(subCategory!);
    map['collection'] = Variable<String>(collection!);
    map['fit'] = Variable<String>(fit!);
    map['description'] = Variable<String>(description!);
    map['qr_code'] = Variable<String>(qrCode!);
    map['ean'] = Variable<String>(ean!);
    map['fabric'] = Variable<String>(fabric!);
    map['finish'] = Variable<String>(finish!);
    map['available_sizes'] = Variable<String>(availableSizes!);
    map['offer_months'] = Variable<String>(offerMonths!);
    map['product_class'] = Variable<double>(productClass!);
    map['secondary'] = Variable<bool>(secondary!);
    map['deactivated'] = Variable<bool>(deactivated!);
    map['material'] = Variable<String>(material!);
    map['quality'] = Variable<String>(quality!);
    map['qr_code2'] = Variable<String>(qrCode2!);
    map['display_name'] = Variable<String>(displayName!);
    map['display_order'] = Variable<double>(displayOrder!);
    map['min_quantity'] = Variable<double>(minQuantity!);
    map['max_quantity'] = Variable<double>(maxQuantity!);
    map['qps_code'] = Variable<String>(qpsCode!);
    map['image'] = Variable<String>(image!);
    map['image_url'] = Variable<String>(imageUrl!);
    map['ad_shoot'] = Variable<bool>(adShoot!);
    map['image_alt'] = Variable<String>(imageAlt!);
    map['is_core'] = Variable<bool>(isCore!);
    map['minimum_article_quantity'] = Variable<double>(minimumArticleQuantity!);
    map['likeabilty'] = Variable<double>(likeabilty!);
    map['brand_rank'] = Variable<String>(brandRank!);
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      brand: Value(brand!),
      mood: Value(mood!),
      gender: Value(gender!),
      theme: Value(theme!),
      category: Value(category!),
      name: Value(name!),
      color: Value(color!),
      option: Value(option!),
      mrp: Value(mrp!),
      subCategory: Value(subCategory!),
      collection: Value(collection!),
      fit: Value(fit!),
      description: Value(description!),
      qrCode: Value(qrCode!),
      ean: Value(ean!),
      fabric: Value(fabric!),
      finish: Value(finish!),
      availableSizes: Value(availableSizes!),
      offerMonths: Value(offerMonths!),
      productClass: Value(productClass!),
      secondary: Value(secondary!),
      deactivated: Value(deactivated!),
      material: Value(material!),
      quality: Value(quality!),
      qrCode2: Value(qrCode2!),
      displayName: Value(displayName!),
      displayOrder: Value(displayOrder!),
      minQuantity: Value(minQuantity!),
      maxQuantity: Value(maxQuantity!),
      qpsCode: Value(qpsCode!),
      image: Value(image!),
      imageUrl: Value(imageUrl!),
      adShoot: Value(adShoot!),
      imageAlt: Value(imageAlt!),
      isCore: Value(isCore!),
      minimumArticleQuantity: Value(minimumArticleQuantity!),
      likeabilty: Value(likeabilty!),
      brandRank: Value(brandRank!),
    );
  }

  factory Product.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Product(
      brand: serializer.fromJson<String>(json['brand']),
      mood: serializer.fromJson<String>(json['mood']),
      gender: serializer.fromJson<String>(json['gender']),
      theme: serializer.fromJson<String>(json['theme']),
      category: serializer.fromJson<String>(json['category']),
      name: serializer.fromJson<String>(json['name']),
      color: serializer.fromJson<String>(json['color']),
      option: serializer.fromJson<String>(json['option']),
      mrp: serializer.fromJson<double>(json['mrp']),
      subCategory: serializer.fromJson<String>(json['subCategory']),
      collection: serializer.fromJson<String>(json['collection']),
      fit: serializer.fromJson<String>(json['fit']),
      description: serializer.fromJson<String>(json['description']),
      qrCode: serializer.fromJson<String>(json['qrCode']),
      ean: serializer.fromJson<String>(json['ean']),
      fabric: serializer.fromJson<String>(json['fabric']),
      finish: serializer.fromJson<String>(json['finish']),
      availableSizes: serializer.fromJson<String>(json['availableSizes']),
      offerMonths: serializer.fromJson<String>(json['offerMonths']),
      productClass: serializer.fromJson<double>(json['productClass']),
      secondary: serializer.fromJson<bool>(json['secondary']),
      deactivated: serializer.fromJson<bool>(json['deactivated']),
      material: serializer.fromJson<String>(json['material']),
      quality: serializer.fromJson<String>(json['quality']),
      qrCode2: serializer.fromJson<String>(json['qrCode2']),
      displayName: serializer.fromJson<String>(json['displayName']),
      displayOrder: serializer.fromJson<double>(json['displayOrder']),
      minQuantity: serializer.fromJson<double>(json['minQuantity']),
      maxQuantity: serializer.fromJson<double>(json['maxQuantity']),
      qpsCode: serializer.fromJson<String>(json['qpsCode']),
      image: serializer.fromJson<String>(json['image']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
      adShoot: serializer.fromJson<bool>(json['adShoot']),
      imageAlt: serializer.fromJson<String>(json['imageAlt']),
      isCore: serializer.fromJson<bool>(json['isCore']),
      minimumArticleQuantity:
          serializer.fromJson<double>(json['minimumArticleQuantity']),
      likeabilty: serializer.fromJson<double>(json['likeabilty']),
      brandRank: serializer.fromJson<String>(json['brandRank']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'brand': serializer.toJson<String>(brand!),
      'mood': serializer.toJson<String>(mood!),
      'gender': serializer.toJson<String>(gender!),
      'theme': serializer.toJson<String>(theme!),
      'category': serializer.toJson<String>(category!),
      'name': serializer.toJson<String>(name!),
      'color': serializer.toJson<String>(color!),
      'option': serializer.toJson<String>(option!),
      'mrp': serializer.toJson<double>(mrp!),
      'subCategory': serializer.toJson<String>(subCategory!),
      'collection': serializer.toJson<String>(collection!),
      'fit': serializer.toJson<String>(fit!),
      'description': serializer.toJson<String>(description!),
      'qrCode': serializer.toJson<String>(qrCode!),
      'ean': serializer.toJson<String>(ean!),
      'fabric': serializer.toJson<String>(fabric!),
      'finish': serializer.toJson<String>(finish!),
      'availableSizes': serializer.toJson<String>(availableSizes!),
      'offerMonths': serializer.toJson<String>(offerMonths!),
      'productClass': serializer.toJson<double>(productClass!),
      'secondary': serializer.toJson<bool>(secondary!),
      'deactivated': serializer.toJson<bool>(deactivated!),
      'material': serializer.toJson<String>(material!),
      'quality': serializer.toJson<String>(quality!),
      'qrCode2': serializer.toJson<String>(qrCode2!),
      'displayName': serializer.toJson<String>(displayName!),
      'displayOrder': serializer.toJson<double>(displayOrder!),
      'minQuantity': serializer.toJson<double>(minQuantity!),
      'maxQuantity': serializer.toJson<double>(maxQuantity!),
      'qpsCode': serializer.toJson<String>(qpsCode!),
      'image': serializer.toJson<String>(image!),
      'imageUrl': serializer.toJson<String>(imageUrl!),
      'adShoot': serializer.toJson<bool>(adShoot!),
      'imageAlt': serializer.toJson<String>(imageAlt!),
      'isCore': serializer.toJson<bool>(isCore!),
      'minimumArticleQuantity':
          serializer.toJson<double>(minimumArticleQuantity!),
      'likeabilty': serializer.toJson<double>(likeabilty!),
      'brandRank': serializer.toJson<String>(brandRank!),
    };
  }

  Product copyWith(
          {String? brand,
          String? mood,
          String? gender,
          String? theme,
          String? category,
          String? name,
          String? color,
          String? option,
          double? mrp,
          String? subCategory,
          String? collection,
          String? fit,
          String? description,
          String? qrCode,
          String? ean,
          String? fabric,
          String? finish,
          String? availableSizes,
          String? offerMonths,
          double? productClass,
          bool? secondary,
          bool? deactivated,
          String? material,
          String? quality,
          String? qrCode2,
          String? displayName,
          double? displayOrder,
          double? minQuantity,
          double? maxQuantity,
          String? qpsCode,
          String? image,
          String? imageUrl,
          bool? adShoot,
          String? imageAlt,
          bool? isCore,
          double? minimumArticleQuantity,
          double? likeabilty,
          String? brandRank}) =>
      Product(
        brand: brand ?? this.brand,
        mood: mood ?? this.mood,
        gender: gender ?? this.gender,
        theme: theme ?? this.theme,
        category: category ?? this.category,
        name: name ?? this.name,
        color: color ?? this.color,
        option: option ?? this.option,
        mrp: mrp ?? this.mrp,
        subCategory: subCategory ?? this.subCategory,
        collection: collection ?? this.collection,
        fit: fit ?? this.fit,
        description: description ?? this.description,
        qrCode: qrCode ?? this.qrCode,
        ean: ean ?? this.ean,
        fabric: fabric ?? this.fabric,
        finish: finish ?? this.finish,
        availableSizes: availableSizes ?? this.availableSizes,
        offerMonths: offerMonths ?? this.offerMonths,
        productClass: productClass ?? this.productClass,
        secondary: secondary ?? this.secondary,
        deactivated: deactivated ?? this.deactivated,
        material: material ?? this.material,
        quality: quality ?? this.quality,
        qrCode2: qrCode2 ?? this.qrCode2,
        displayName: displayName ?? this.displayName,
        displayOrder: displayOrder ?? this.displayOrder,
        minQuantity: minQuantity ?? this.minQuantity,
        maxQuantity: maxQuantity ?? this.maxQuantity,
        qpsCode: qpsCode ?? this.qpsCode,
        image: image ?? this.image,
        imageUrl: imageUrl ?? this.imageUrl,
        adShoot: adShoot ?? this.adShoot,
        imageAlt: imageAlt ?? this.imageAlt,
        isCore: isCore ?? this.isCore,
        minimumArticleQuantity:
            minimumArticleQuantity ?? this.minimumArticleQuantity,
        likeabilty: likeabilty ?? this.likeabilty,
        brandRank: brandRank ?? this.brandRank,
      );
  @override
  String toString() {
    return (StringBuffer('Product(')
          ..write('brand: $brand, ')
          ..write('mood: $mood, ')
          ..write('gender: $gender, ')
          ..write('theme: $theme, ')
          ..write('category: $category, ')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('option: $option, ')
          ..write('mrp: $mrp, ')
          ..write('subCategory: $subCategory, ')
          ..write('collection: $collection, ')
          ..write('fit: $fit, ')
          ..write('description: $description, ')
          ..write('qrCode: $qrCode, ')
          ..write('ean: $ean, ')
          ..write('fabric: $fabric, ')
          ..write('finish: $finish, ')
          ..write('availableSizes: $availableSizes, ')
          ..write('offerMonths: $offerMonths, ')
          ..write('productClass: $productClass, ')
          ..write('secondary: $secondary, ')
          ..write('deactivated: $deactivated, ')
          ..write('material: $material, ')
          ..write('quality: $quality, ')
          ..write('qrCode2: $qrCode2, ')
          ..write('displayName: $displayName, ')
          ..write('displayOrder: $displayOrder, ')
          ..write('minQuantity: $minQuantity, ')
          ..write('maxQuantity: $maxQuantity, ')
          ..write('qpsCode: $qpsCode, ')
          ..write('image: $image, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('adShoot: $adShoot, ')
          ..write('imageAlt: $imageAlt, ')
          ..write('isCore: $isCore, ')
          ..write('minimumArticleQuantity: $minimumArticleQuantity, ')
          ..write('likeabilty: $likeabilty, ')
          ..write('brandRank: $brandRank')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      brand.hashCode,
      $mrjc(
          mood.hashCode,
          $mrjc(
              gender.hashCode,
              $mrjc(
                  theme.hashCode,
                  $mrjc(
                      category.hashCode,
                      $mrjc(
                          name.hashCode,
                          $mrjc(
                              color.hashCode,
                              $mrjc(
                                  option.hashCode,
                                  $mrjc(
                                      mrp.hashCode,
                                      $mrjc(
                                          subCategory.hashCode,
                                          $mrjc(
                                              collection.hashCode,
                                              $mrjc(
                                                  fit.hashCode,
                                                  $mrjc(
                                                      description.hashCode,
                                                      $mrjc(
                                                          qrCode.hashCode,
                                                          $mrjc(
                                                              ean.hashCode,
                                                              $mrjc(
                                                                  fabric
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      finish
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          availableSizes
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              offerMonths.hashCode,
                                                                              $mrjc(productClass.hashCode, $mrjc(secondary.hashCode, $mrjc(deactivated.hashCode, $mrjc(material.hashCode, $mrjc(quality.hashCode, $mrjc(qrCode2.hashCode, $mrjc(displayName.hashCode, $mrjc(displayOrder.hashCode, $mrjc(minQuantity.hashCode, $mrjc(maxQuantity.hashCode, $mrjc(qpsCode.hashCode, $mrjc(image.hashCode, $mrjc(imageUrl.hashCode, $mrjc(adShoot.hashCode, $mrjc(imageAlt.hashCode, $mrjc(isCore.hashCode, $mrjc(minimumArticleQuantity.hashCode, $mrjc(likeabilty.hashCode, brandRank.hashCode))))))))))))))))))))))))))))))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          other.brand == this.brand &&
          other.mood == this.mood &&
          other.gender == this.gender &&
          other.theme == this.theme &&
          other.category == this.category &&
          other.name == this.name &&
          other.color == this.color &&
          other.option == this.option &&
          other.mrp == this.mrp &&
          other.subCategory == this.subCategory &&
          other.collection == this.collection &&
          other.fit == this.fit &&
          other.description == this.description &&
          other.qrCode == this.qrCode &&
          other.ean == this.ean &&
          other.fabric == this.fabric &&
          other.finish == this.finish &&
          other.availableSizes == this.availableSizes &&
          other.offerMonths == this.offerMonths &&
          other.productClass == this.productClass &&
          other.secondary == this.secondary &&
          other.deactivated == this.deactivated &&
          other.material == this.material &&
          other.quality == this.quality &&
          other.qrCode2 == this.qrCode2 &&
          other.displayName == this.displayName &&
          other.displayOrder == this.displayOrder &&
          other.minQuantity == this.minQuantity &&
          other.maxQuantity == this.maxQuantity &&
          other.qpsCode == this.qpsCode &&
          other.image == this.image &&
          other.imageUrl == this.imageUrl &&
          other.adShoot == this.adShoot &&
          other.imageAlt == this.imageAlt &&
          other.isCore == this.isCore &&
          other.minimumArticleQuantity == this.minimumArticleQuantity &&
          other.likeabilty == this.likeabilty &&
          other.brandRank == this.brandRank);
}

class ProductsCompanion extends UpdateCompanion<Product> {
  final Value<String> brand;
  final Value<String> mood;
  final Value<String> gender;
  final Value<String> theme;
  final Value<String> category;
  final Value<String> name;
  final Value<String> color;
  final Value<String> option;
  final Value<double> mrp;
  final Value<String> subCategory;
  final Value<String> collection;
  final Value<String> fit;
  final Value<String> description;
  final Value<String> qrCode;
  final Value<String> ean;
  final Value<String> fabric;
  final Value<String> finish;
  final Value<String> availableSizes;
  final Value<String> offerMonths;
  final Value<double> productClass;
  final Value<bool> secondary;
  final Value<bool> deactivated;
  final Value<String> material;
  final Value<String> quality;
  final Value<String> qrCode2;
  final Value<String> displayName;
  final Value<double> displayOrder;
  final Value<double> minQuantity;
  final Value<double> maxQuantity;
  final Value<String> qpsCode;
  final Value<String> image;
  final Value<String> imageUrl;
  final Value<bool> adShoot;
  final Value<String> imageAlt;
  final Value<bool> isCore;
  final Value<double> minimumArticleQuantity;
  final Value<double> likeabilty;
  final Value<String> brandRank;
  const ProductsCompanion({
    this.brand = const Value.absent(),
    this.mood = const Value.absent(),
    this.gender = const Value.absent(),
    this.theme = const Value.absent(),
    this.category = const Value.absent(),
    this.name = const Value.absent(),
    this.color = const Value.absent(),
    this.option = const Value.absent(),
    this.mrp = const Value.absent(),
    this.subCategory = const Value.absent(),
    this.collection = const Value.absent(),
    this.fit = const Value.absent(),
    this.description = const Value.absent(),
    this.qrCode = const Value.absent(),
    this.ean = const Value.absent(),
    this.fabric = const Value.absent(),
    this.finish = const Value.absent(),
    this.availableSizes = const Value.absent(),
    this.offerMonths = const Value.absent(),
    this.productClass = const Value.absent(),
    this.secondary = const Value.absent(),
    this.deactivated = const Value.absent(),
    this.material = const Value.absent(),
    this.quality = const Value.absent(),
    this.qrCode2 = const Value.absent(),
    this.displayName = const Value.absent(),
    this.displayOrder = const Value.absent(),
    this.minQuantity = const Value.absent(),
    this.maxQuantity = const Value.absent(),
    this.qpsCode = const Value.absent(),
    this.image = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.adShoot = const Value.absent(),
    this.imageAlt = const Value.absent(),
    this.isCore = const Value.absent(),
    this.minimumArticleQuantity = const Value.absent(),
    this.likeabilty = const Value.absent(),
    this.brandRank = const Value.absent(),
  });
  ProductsCompanion.insert({
    required String brand,
    required String mood,
    required String gender,
    required String theme,
    required String category,
    required String name,
    required String color,
    required String option,
    required double mrp,
    required String subCategory,
    required String collection,
    required String fit,
    required String description,
    required String qrCode,
    required String ean,
    required String fabric,
    required String finish,
    required String availableSizes,
    required String offerMonths,
    required double productClass,
    this.secondary = const Value.absent(),
    this.deactivated = const Value.absent(),
    required String material,
    required String quality,
    required String qrCode2,
    required String displayName,
    required double displayOrder,
    required double minQuantity,
    required double maxQuantity,
    required String qpsCode,
    required String image,
    required String imageUrl,
    this.adShoot = const Value.absent(),
    required String imageAlt,
    this.isCore = const Value.absent(),
    required double minimumArticleQuantity,
    required double likeabilty,
    required String brandRank,
  })  : brand = Value(brand),
        mood = Value(mood),
        gender = Value(gender),
        theme = Value(theme),
        category = Value(category),
        name = Value(name),
        color = Value(color),
        option = Value(option),
        mrp = Value(mrp),
        subCategory = Value(subCategory),
        collection = Value(collection),
        fit = Value(fit),
        description = Value(description),
        qrCode = Value(qrCode),
        ean = Value(ean),
        fabric = Value(fabric),
        finish = Value(finish),
        availableSizes = Value(availableSizes),
        offerMonths = Value(offerMonths),
        productClass = Value(productClass),
        material = Value(material),
        quality = Value(quality),
        qrCode2 = Value(qrCode2),
        displayName = Value(displayName),
        displayOrder = Value(displayOrder),
        minQuantity = Value(minQuantity),
        maxQuantity = Value(maxQuantity),
        qpsCode = Value(qpsCode),
        image = Value(image),
        imageUrl = Value(imageUrl),
        imageAlt = Value(imageAlt),
        minimumArticleQuantity = Value(minimumArticleQuantity),
        likeabilty = Value(likeabilty),
        brandRank = Value(brandRank);
  static Insertable<Product> custom({
    Expression<String>? brand,
    Expression<String>? mood,
    Expression<String>? gender,
    Expression<String>? theme,
    Expression<String>? category,
    Expression<String>? name,
    Expression<String>? color,
    Expression<String>? option,
    Expression<double>? mrp,
    Expression<String>? subCategory,
    Expression<String>? collection,
    Expression<String>? fit,
    Expression<String>? description,
    Expression<String>? qrCode,
    Expression<String>? ean,
    Expression<String>? fabric,
    Expression<String>? finish,
    Expression<String>? availableSizes,
    Expression<String>? offerMonths,
    Expression<double>? productClass,
    Expression<bool>? secondary,
    Expression<bool>? deactivated,
    Expression<String>? material,
    Expression<String>? quality,
    Expression<String>? qrCode2,
    Expression<String>? displayName,
    Expression<double>? displayOrder,
    Expression<double>? minQuantity,
    Expression<double>? maxQuantity,
    Expression<String>? qpsCode,
    Expression<String>? image,
    Expression<String>? imageUrl,
    Expression<bool>? adShoot,
    Expression<String>? imageAlt,
    Expression<bool>? isCore,
    Expression<double>? minimumArticleQuantity,
    Expression<double>? likeabilty,
    Expression<String>? brandRank,
  }) {
    return RawValuesInsertable({
      if (brand != null) 'brand': brand,
      if (mood != null) 'mood': mood,
      if (gender != null) 'gender': gender,
      if (theme != null) 'theme': theme,
      if (category != null) 'category': category,
      if (name != null) 'name': name,
      if (color != null) 'color': color,
      if (option != null) 'option': option,
      if (mrp != null) 'mrp': mrp,
      if (subCategory != null) 'sub_category': subCategory,
      if (collection != null) 'collection': collection,
      if (fit != null) 'fit': fit,
      if (description != null) 'description': description,
      if (qrCode != null) 'qr_code': qrCode,
      if (ean != null) 'ean': ean,
      if (fabric != null) 'fabric': fabric,
      if (finish != null) 'finish': finish,
      if (availableSizes != null) 'available_sizes': availableSizes,
      if (offerMonths != null) 'offer_months': offerMonths,
      if (productClass != null) 'product_class': productClass,
      if (secondary != null) 'secondary': secondary,
      if (deactivated != null) 'deactivated': deactivated,
      if (material != null) 'material': material,
      if (quality != null) 'quality': quality,
      if (qrCode2 != null) 'qr_code2': qrCode2,
      if (displayName != null) 'display_name': displayName,
      if (displayOrder != null) 'display_order': displayOrder,
      if (minQuantity != null) 'min_quantity': minQuantity,
      if (maxQuantity != null) 'max_quantity': maxQuantity,
      if (qpsCode != null) 'qps_code': qpsCode,
      if (image != null) 'image': image,
      if (imageUrl != null) 'image_url': imageUrl,
      if (adShoot != null) 'ad_shoot': adShoot,
      if (imageAlt != null) 'image_alt': imageAlt,
      if (isCore != null) 'is_core': isCore,
      if (minimumArticleQuantity != null)
        'minimum_article_quantity': minimumArticleQuantity,
      if (likeabilty != null) 'likeabilty': likeabilty,
      if (brandRank != null) 'brand_rank': brandRank,
    });
  }

  ProductsCompanion copyWith(
      {Value<String>? brand,
      Value<String>? mood,
      Value<String>? gender,
      Value<String>? theme,
      Value<String>? category,
      Value<String>? name,
      Value<String>? color,
      Value<String>? option,
      Value<double>? mrp,
      Value<String>? subCategory,
      Value<String>? collection,
      Value<String>? fit,
      Value<String>? description,
      Value<String>? qrCode,
      Value<String>? ean,
      Value<String>? fabric,
      Value<String>? finish,
      Value<String>? availableSizes,
      Value<String>? offerMonths,
      Value<double>? productClass,
      Value<bool>? secondary,
      Value<bool>? deactivated,
      Value<String>? material,
      Value<String>? quality,
      Value<String>? qrCode2,
      Value<String>? displayName,
      Value<double>? displayOrder,
      Value<double>? minQuantity,
      Value<double>? maxQuantity,
      Value<String>? qpsCode,
      Value<String>? image,
      Value<String>? imageUrl,
      Value<bool>? adShoot,
      Value<String>? imageAlt,
      Value<bool>? isCore,
      Value<double>? minimumArticleQuantity,
      Value<double>? likeabilty,
      Value<String>? brandRank}) {
    return ProductsCompanion(
      brand: brand ?? this.brand,
      mood: mood ?? this.mood,
      gender: gender ?? this.gender,
      theme: theme ?? this.theme,
      category: category ?? this.category,
      name: name ?? this.name,
      color: color ?? this.color,
      option: option ?? this.option,
      mrp: mrp ?? this.mrp,
      subCategory: subCategory ?? this.subCategory,
      collection: collection ?? this.collection,
      fit: fit ?? this.fit,
      description: description ?? this.description,
      qrCode: qrCode ?? this.qrCode,
      ean: ean ?? this.ean,
      fabric: fabric ?? this.fabric,
      finish: finish ?? this.finish,
      availableSizes: availableSizes ?? this.availableSizes,
      offerMonths: offerMonths ?? this.offerMonths,
      productClass: productClass ?? this.productClass,
      secondary: secondary ?? this.secondary,
      deactivated: deactivated ?? this.deactivated,
      material: material ?? this.material,
      quality: quality ?? this.quality,
      qrCode2: qrCode2 ?? this.qrCode2,
      displayName: displayName ?? this.displayName,
      displayOrder: displayOrder ?? this.displayOrder,
      minQuantity: minQuantity ?? this.minQuantity,
      maxQuantity: maxQuantity ?? this.maxQuantity,
      qpsCode: qpsCode ?? this.qpsCode,
      image: image ?? this.image,
      imageUrl: imageUrl ?? this.imageUrl,
      adShoot: adShoot ?? this.adShoot,
      imageAlt: imageAlt ?? this.imageAlt,
      isCore: isCore ?? this.isCore,
      minimumArticleQuantity:
          minimumArticleQuantity ?? this.minimumArticleQuantity,
      likeabilty: likeabilty ?? this.likeabilty,
      brandRank: brandRank ?? this.brandRank,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (brand.present) {
      map['brand'] = Variable<String>(brand.value);
    }
    if (mood.present) {
      map['mood'] = Variable<String>(mood.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (theme.present) {
      map['theme'] = Variable<String>(theme.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (option.present) {
      map['option'] = Variable<String>(option.value);
    }
    if (mrp.present) {
      map['mrp'] = Variable<double>(mrp.value);
    }
    if (subCategory.present) {
      map['sub_category'] = Variable<String>(subCategory.value);
    }
    if (collection.present) {
      map['collection'] = Variable<String>(collection.value);
    }
    if (fit.present) {
      map['fit'] = Variable<String>(fit.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (qrCode.present) {
      map['qr_code'] = Variable<String>(qrCode.value);
    }
    if (ean.present) {
      map['ean'] = Variable<String>(ean.value);
    }
    if (fabric.present) {
      map['fabric'] = Variable<String>(fabric.value);
    }
    if (finish.present) {
      map['finish'] = Variable<String>(finish.value);
    }
    if (availableSizes.present) {
      map['available_sizes'] = Variable<String>(availableSizes.value);
    }
    if (offerMonths.present) {
      map['offer_months'] = Variable<String>(offerMonths.value);
    }
    if (productClass.present) {
      map['product_class'] = Variable<double>(productClass.value);
    }
    if (secondary.present) {
      map['secondary'] = Variable<bool>(secondary.value);
    }
    if (deactivated.present) {
      map['deactivated'] = Variable<bool>(deactivated.value);
    }
    if (material.present) {
      map['material'] = Variable<String>(material.value);
    }
    if (quality.present) {
      map['quality'] = Variable<String>(quality.value);
    }
    if (qrCode2.present) {
      map['qr_code2'] = Variable<String>(qrCode2.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (displayOrder.present) {
      map['display_order'] = Variable<double>(displayOrder.value);
    }
    if (minQuantity.present) {
      map['min_quantity'] = Variable<double>(minQuantity.value);
    }
    if (maxQuantity.present) {
      map['max_quantity'] = Variable<double>(maxQuantity.value);
    }
    if (qpsCode.present) {
      map['qps_code'] = Variable<String>(qpsCode.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (adShoot.present) {
      map['ad_shoot'] = Variable<bool>(adShoot.value);
    }
    if (imageAlt.present) {
      map['image_alt'] = Variable<String>(imageAlt.value);
    }
    if (isCore.present) {
      map['is_core'] = Variable<bool>(isCore.value);
    }
    if (minimumArticleQuantity.present) {
      map['minimum_article_quantity'] =
          Variable<double>(minimumArticleQuantity.value);
    }
    if (likeabilty.present) {
      map['likeabilty'] = Variable<double>(likeabilty.value);
    }
    if (brandRank.present) {
      map['brand_rank'] = Variable<String>(brandRank.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('brand: $brand, ')
          ..write('mood: $mood, ')
          ..write('gender: $gender, ')
          ..write('theme: $theme, ')
          ..write('category: $category, ')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('option: $option, ')
          ..write('mrp: $mrp, ')
          ..write('subCategory: $subCategory, ')
          ..write('collection: $collection, ')
          ..write('fit: $fit, ')
          ..write('description: $description, ')
          ..write('qrCode: $qrCode, ')
          ..write('ean: $ean, ')
          ..write('fabric: $fabric, ')
          ..write('finish: $finish, ')
          ..write('availableSizes: $availableSizes, ')
          ..write('offerMonths: $offerMonths, ')
          ..write('productClass: $productClass, ')
          ..write('secondary: $secondary, ')
          ..write('deactivated: $deactivated, ')
          ..write('material: $material, ')
          ..write('quality: $quality, ')
          ..write('qrCode2: $qrCode2, ')
          ..write('displayName: $displayName, ')
          ..write('displayOrder: $displayOrder, ')
          ..write('minQuantity: $minQuantity, ')
          ..write('maxQuantity: $maxQuantity, ')
          ..write('qpsCode: $qpsCode, ')
          ..write('image: $image, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('adShoot: $adShoot, ')
          ..write('imageAlt: $imageAlt, ')
          ..write('isCore: $isCore, ')
          ..write('minimumArticleQuantity: $minimumArticleQuantity, ')
          ..write('likeabilty: $likeabilty, ')
          ..write('brandRank: $brandRank')
          ..write(')'))
        .toString();
  }
}

class $ProductsTable extends Products with TableInfo<$ProductsTable, Product> {
  final GeneratedDatabase _db;
  final String? _alias;
  $ProductsTable(this._db, [this._alias]);
  final VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedTextColumn brand = _constructBrand();
  GeneratedTextColumn _constructBrand() {
    return GeneratedTextColumn('brand', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _moodMeta = const VerificationMeta('mood');
  @override
  late final GeneratedTextColumn mood = _constructMood();
  GeneratedTextColumn _constructMood() {
    return GeneratedTextColumn('mood', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedTextColumn gender = _constructGender();
  GeneratedTextColumn _constructGender() {
    return GeneratedTextColumn('gender', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _themeMeta = const VerificationMeta('theme');
  @override
  late final GeneratedTextColumn theme = _constructTheme();
  GeneratedTextColumn _constructTheme() {
    return GeneratedTextColumn('theme', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  @override
  late final GeneratedTextColumn category = _constructCategory();
  GeneratedTextColumn _constructCategory() {
    return GeneratedTextColumn('category', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedTextColumn name = _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedTextColumn color = _constructColor();
  GeneratedTextColumn _constructColor() {
    return GeneratedTextColumn('color', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _optionMeta = const VerificationMeta('option');
  @override
  late final GeneratedTextColumn option = _constructOption();
  GeneratedTextColumn _constructOption() {
    return GeneratedTextColumn('option', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _mrpMeta = const VerificationMeta('mrp');
  @override
  late final GeneratedRealColumn mrp = _constructMrp();
  GeneratedRealColumn _constructMrp() {
    return GeneratedRealColumn(
      'mrp',
      $tableName,
      false,
    );
  }

  final VerificationMeta _subCategoryMeta =
      const VerificationMeta('subCategory');
  @override
  late final GeneratedTextColumn subCategory = _constructSubCategory();
  GeneratedTextColumn _constructSubCategory() {
    return GeneratedTextColumn('sub_category', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _collectionMeta = const VerificationMeta('collection');
  @override
  late final GeneratedTextColumn collection = _constructCollection();
  GeneratedTextColumn _constructCollection() {
    return GeneratedTextColumn('collection', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _fitMeta = const VerificationMeta('fit');
  @override
  late final GeneratedTextColumn fit = _constructFit();
  GeneratedTextColumn _constructFit() {
    return GeneratedTextColumn('fit', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedTextColumn description = _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn('description', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _qrCodeMeta = const VerificationMeta('qrCode');
  @override
  late final GeneratedTextColumn qrCode = _constructQrCode();
  GeneratedTextColumn _constructQrCode() {
    return GeneratedTextColumn('qr_code', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _eanMeta = const VerificationMeta('ean');
  @override
  late final GeneratedTextColumn ean = _constructEan();
  GeneratedTextColumn _constructEan() {
    return GeneratedTextColumn('ean', $tableName, false,
        minTextLength: 0, maxTextLength: 500);
  }

  final VerificationMeta _fabricMeta = const VerificationMeta('fabric');
  @override
  late final GeneratedTextColumn fabric = _constructFabric();
  GeneratedTextColumn _constructFabric() {
    return GeneratedTextColumn('fabric', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _finishMeta = const VerificationMeta('finish');
  @override
  late final GeneratedTextColumn finish = _constructFinish();
  GeneratedTextColumn _constructFinish() {
    return GeneratedTextColumn('finish', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _availableSizesMeta =
      const VerificationMeta('availableSizes');
  @override
  late final GeneratedTextColumn availableSizes = _constructAvailableSizes();
  GeneratedTextColumn _constructAvailableSizes() {
    return GeneratedTextColumn('available_sizes', $tableName, false,
        minTextLength: 0, maxTextLength: 300);
  }

  final VerificationMeta _offerMonthsMeta =
      const VerificationMeta('offerMonths');
  @override
  late final GeneratedTextColumn offerMonths = _constructOfferMonths();
  GeneratedTextColumn _constructOfferMonths() {
    return GeneratedTextColumn('offer_months', $tableName, false,
        minTextLength: 0, maxTextLength: 300);
  }

  final VerificationMeta _productClassMeta =
      const VerificationMeta('productClass');
  @override
  late final GeneratedRealColumn productClass = _constructProductClass();
  GeneratedRealColumn _constructProductClass() {
    return GeneratedRealColumn(
      'product_class',
      $tableName,
      false,
    );
  }

  final VerificationMeta _secondaryMeta = const VerificationMeta('secondary');
  @override
  late final GeneratedBoolColumn secondary = _constructSecondary();
  GeneratedBoolColumn _constructSecondary() {
    return GeneratedBoolColumn('secondary', $tableName, false,
        defaultValue: const Constant(false));
  }

  final VerificationMeta _deactivatedMeta =
      const VerificationMeta('deactivated');
  @override
  late final GeneratedBoolColumn deactivated = _constructDeactivated();
  GeneratedBoolColumn _constructDeactivated() {
    return GeneratedBoolColumn('deactivated', $tableName, false,
        defaultValue: const Constant(false));
  }

  final VerificationMeta _materialMeta = const VerificationMeta('material');
  @override
  late final GeneratedTextColumn material = _constructMaterial();
  GeneratedTextColumn _constructMaterial() {
    return GeneratedTextColumn('material', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _qualityMeta = const VerificationMeta('quality');
  @override
  late final GeneratedTextColumn quality = _constructQuality();
  GeneratedTextColumn _constructQuality() {
    return GeneratedTextColumn('quality', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _qrCode2Meta = const VerificationMeta('qrCode2');
  @override
  late final GeneratedTextColumn qrCode2 = _constructQrCode2();
  GeneratedTextColumn _constructQrCode2() {
    return GeneratedTextColumn('qr_code2', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _displayNameMeta =
      const VerificationMeta('displayName');
  @override
  late final GeneratedTextColumn displayName = _constructDisplayName();
  GeneratedTextColumn _constructDisplayName() {
    return GeneratedTextColumn('display_name', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _displayOrderMeta =
      const VerificationMeta('displayOrder');
  @override
  late final GeneratedRealColumn displayOrder = _constructDisplayOrder();
  GeneratedRealColumn _constructDisplayOrder() {
    return GeneratedRealColumn(
      'display_order',
      $tableName,
      false,
    );
  }

  final VerificationMeta _minQuantityMeta =
      const VerificationMeta('minQuantity');
  @override
  late final GeneratedRealColumn minQuantity = _constructMinQuantity();
  GeneratedRealColumn _constructMinQuantity() {
    return GeneratedRealColumn(
      'min_quantity',
      $tableName,
      false,
    );
  }

  final VerificationMeta _maxQuantityMeta =
      const VerificationMeta('maxQuantity');
  @override
  late final GeneratedRealColumn maxQuantity = _constructMaxQuantity();
  GeneratedRealColumn _constructMaxQuantity() {
    return GeneratedRealColumn(
      'max_quantity',
      $tableName,
      false,
    );
  }

  final VerificationMeta _qpsCodeMeta = const VerificationMeta('qpsCode');
  @override
  late final GeneratedTextColumn qpsCode = _constructQpsCode();
  GeneratedTextColumn _constructQpsCode() {
    return GeneratedTextColumn('qps_code', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedTextColumn image = _constructImage();
  GeneratedTextColumn _constructImage() {
    return GeneratedTextColumn('image', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _imageUrlMeta = const VerificationMeta('imageUrl');
  @override
  late final GeneratedTextColumn imageUrl = _constructImageUrl();
  GeneratedTextColumn _constructImageUrl() {
    return GeneratedTextColumn('image_url', $tableName, false,
        minTextLength: 0, maxTextLength: 300);
  }

  final VerificationMeta _adShootMeta = const VerificationMeta('adShoot');
  @override
  late final GeneratedBoolColumn adShoot = _constructAdShoot();
  GeneratedBoolColumn _constructAdShoot() {
    return GeneratedBoolColumn('ad_shoot', $tableName, false,
        defaultValue: const Constant(false));
  }

  final VerificationMeta _imageAltMeta = const VerificationMeta('imageAlt');
  @override
  late final GeneratedTextColumn imageAlt = _constructImageAlt();
  GeneratedTextColumn _constructImageAlt() {
    return GeneratedTextColumn('image_alt', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _isCoreMeta = const VerificationMeta('isCore');
  @override
  late final GeneratedBoolColumn isCore = _constructIsCore();
  GeneratedBoolColumn _constructIsCore() {
    return GeneratedBoolColumn('is_core', $tableName, false,
        defaultValue: const Constant(false));
  }

  final VerificationMeta _minimumArticleQuantityMeta =
      const VerificationMeta('minimumArticleQuantity');
  @override
  late final GeneratedRealColumn minimumArticleQuantity =
      _constructMinimumArticleQuantity();
  GeneratedRealColumn _constructMinimumArticleQuantity() {
    return GeneratedRealColumn(
      'minimum_article_quantity',
      $tableName,
      false,
    );
  }

  final VerificationMeta _likeabiltyMeta = const VerificationMeta('likeabilty');
  @override
  late final GeneratedRealColumn likeabilty = _constructLikeabilty();
  GeneratedRealColumn _constructLikeabilty() {
    return GeneratedRealColumn(
      'likeabilty',
      $tableName,
      false,
    );
  }

  final VerificationMeta _brandRankMeta = const VerificationMeta('brandRank');
  @override
  late final GeneratedTextColumn brandRank = _constructBrandRank();
  GeneratedTextColumn _constructBrandRank() {
    return GeneratedTextColumn('brand_rank', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  @override
  List<GeneratedColumn> get $columns => [
        brand,
        mood,
        gender,
        theme,
        category,
        name,
        color,
        option,
        mrp,
        subCategory,
        collection,
        fit,
        description,
        qrCode,
        ean,
        fabric,
        finish,
        availableSizes,
        offerMonths,
        productClass,
        secondary,
        deactivated,
        material,
        quality,
        qrCode2,
        displayName,
        displayOrder,
        minQuantity,
        maxQuantity,
        qpsCode,
        image,
        imageUrl,
        adShoot,
        imageAlt,
        isCore,
        minimumArticleQuantity,
        likeabilty,
        brandRank
      ];
  @override
  $ProductsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'products';
  @override
  final String actualTableName = 'products';
  @override
  VerificationContext validateIntegrity(Insertable<Product> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('brand')) {
      context.handle(
          _brandMeta, brand.isAcceptableOrUnknown(data['brand']!, _brandMeta));
    } else if (isInserting) {
      context.missing(_brandMeta);
    }
    if (data.containsKey('mood')) {
      context.handle(
          _moodMeta, mood.isAcceptableOrUnknown(data['mood']!, _moodMeta));
    } else if (isInserting) {
      context.missing(_moodMeta);
    }
    if (data.containsKey('gender')) {
      context.handle(_genderMeta,
          gender.isAcceptableOrUnknown(data['gender']!, _genderMeta));
    } else if (isInserting) {
      context.missing(_genderMeta);
    }
    if (data.containsKey('theme')) {
      context.handle(
          _themeMeta, theme.isAcceptableOrUnknown(data['theme']!, _themeMeta));
    } else if (isInserting) {
      context.missing(_themeMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('option')) {
      context.handle(_optionMeta,
          option.isAcceptableOrUnknown(data['option']!, _optionMeta));
    } else if (isInserting) {
      context.missing(_optionMeta);
    }
    if (data.containsKey('mrp')) {
      context.handle(
          _mrpMeta, mrp.isAcceptableOrUnknown(data['mrp']!, _mrpMeta));
    } else if (isInserting) {
      context.missing(_mrpMeta);
    }
    if (data.containsKey('sub_category')) {
      context.handle(
          _subCategoryMeta,
          subCategory.isAcceptableOrUnknown(
              data['sub_category']!, _subCategoryMeta));
    } else if (isInserting) {
      context.missing(_subCategoryMeta);
    }
    if (data.containsKey('collection')) {
      context.handle(
          _collectionMeta,
          collection.isAcceptableOrUnknown(
              data['collection']!, _collectionMeta));
    } else if (isInserting) {
      context.missing(_collectionMeta);
    }
    if (data.containsKey('fit')) {
      context.handle(
          _fitMeta, fit.isAcceptableOrUnknown(data['fit']!, _fitMeta));
    } else if (isInserting) {
      context.missing(_fitMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('qr_code')) {
      context.handle(_qrCodeMeta,
          qrCode.isAcceptableOrUnknown(data['qr_code']!, _qrCodeMeta));
    } else if (isInserting) {
      context.missing(_qrCodeMeta);
    }
    if (data.containsKey('ean')) {
      context.handle(
          _eanMeta, ean.isAcceptableOrUnknown(data['ean']!, _eanMeta));
    } else if (isInserting) {
      context.missing(_eanMeta);
    }
    if (data.containsKey('fabric')) {
      context.handle(_fabricMeta,
          fabric.isAcceptableOrUnknown(data['fabric']!, _fabricMeta));
    } else if (isInserting) {
      context.missing(_fabricMeta);
    }
    if (data.containsKey('finish')) {
      context.handle(_finishMeta,
          finish.isAcceptableOrUnknown(data['finish']!, _finishMeta));
    } else if (isInserting) {
      context.missing(_finishMeta);
    }
    if (data.containsKey('available_sizes')) {
      context.handle(
          _availableSizesMeta,
          availableSizes.isAcceptableOrUnknown(
              data['available_sizes']!, _availableSizesMeta));
    } else if (isInserting) {
      context.missing(_availableSizesMeta);
    }
    if (data.containsKey('offer_months')) {
      context.handle(
          _offerMonthsMeta,
          offerMonths.isAcceptableOrUnknown(
              data['offer_months']!, _offerMonthsMeta));
    } else if (isInserting) {
      context.missing(_offerMonthsMeta);
    }
    if (data.containsKey('product_class')) {
      context.handle(
          _productClassMeta,
          productClass.isAcceptableOrUnknown(
              data['product_class']!, _productClassMeta));
    } else if (isInserting) {
      context.missing(_productClassMeta);
    }
    if (data.containsKey('secondary')) {
      context.handle(_secondaryMeta,
          secondary.isAcceptableOrUnknown(data['secondary']!, _secondaryMeta));
    }
    if (data.containsKey('deactivated')) {
      context.handle(
          _deactivatedMeta,
          deactivated.isAcceptableOrUnknown(
              data['deactivated']!, _deactivatedMeta));
    }
    if (data.containsKey('material')) {
      context.handle(_materialMeta,
          material.isAcceptableOrUnknown(data['material']!, _materialMeta));
    } else if (isInserting) {
      context.missing(_materialMeta);
    }
    if (data.containsKey('quality')) {
      context.handle(_qualityMeta,
          quality.isAcceptableOrUnknown(data['quality']!, _qualityMeta));
    } else if (isInserting) {
      context.missing(_qualityMeta);
    }
    if (data.containsKey('qr_code2')) {
      context.handle(_qrCode2Meta,
          qrCode2.isAcceptableOrUnknown(data['qr_code2']!, _qrCode2Meta));
    } else if (isInserting) {
      context.missing(_qrCode2Meta);
    }
    if (data.containsKey('display_name')) {
      context.handle(
          _displayNameMeta,
          displayName.isAcceptableOrUnknown(
              data['display_name']!, _displayNameMeta));
    } else if (isInserting) {
      context.missing(_displayNameMeta);
    }
    if (data.containsKey('display_order')) {
      context.handle(
          _displayOrderMeta,
          displayOrder.isAcceptableOrUnknown(
              data['display_order']!, _displayOrderMeta));
    } else if (isInserting) {
      context.missing(_displayOrderMeta);
    }
    if (data.containsKey('min_quantity')) {
      context.handle(
          _minQuantityMeta,
          minQuantity.isAcceptableOrUnknown(
              data['min_quantity']!, _minQuantityMeta));
    } else if (isInserting) {
      context.missing(_minQuantityMeta);
    }
    if (data.containsKey('max_quantity')) {
      context.handle(
          _maxQuantityMeta,
          maxQuantity.isAcceptableOrUnknown(
              data['max_quantity']!, _maxQuantityMeta));
    } else if (isInserting) {
      context.missing(_maxQuantityMeta);
    }
    if (data.containsKey('qps_code')) {
      context.handle(_qpsCodeMeta,
          qpsCode.isAcceptableOrUnknown(data['qps_code']!, _qpsCodeMeta));
    } else if (isInserting) {
      context.missing(_qpsCodeMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    if (data.containsKey('ad_shoot')) {
      context.handle(_adShootMeta,
          adShoot.isAcceptableOrUnknown(data['ad_shoot']!, _adShootMeta));
    }
    if (data.containsKey('image_alt')) {
      context.handle(_imageAltMeta,
          imageAlt.isAcceptableOrUnknown(data['image_alt']!, _imageAltMeta));
    } else if (isInserting) {
      context.missing(_imageAltMeta);
    }
    if (data.containsKey('is_core')) {
      context.handle(_isCoreMeta,
          isCore.isAcceptableOrUnknown(data['is_core']!, _isCoreMeta));
    }
    if (data.containsKey('minimum_article_quantity')) {
      context.handle(
          _minimumArticleQuantityMeta,
          minimumArticleQuantity.isAcceptableOrUnknown(
              data['minimum_article_quantity']!, _minimumArticleQuantityMeta));
    } else if (isInserting) {
      context.missing(_minimumArticleQuantityMeta);
    }
    if (data.containsKey('likeabilty')) {
      context.handle(
          _likeabiltyMeta,
          likeabilty.isAcceptableOrUnknown(
              data['likeabilty']!, _likeabiltyMeta));
    } else if (isInserting) {
      context.missing(_likeabiltyMeta);
    }
    if (data.containsKey('brand_rank')) {
      context.handle(_brandRankMeta,
          brandRank.isAcceptableOrUnknown(data['brand_rank']!, _brandRankMeta));
    } else if (isInserting) {
      context.missing(_brandRankMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {option};
  @override
  Product map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Product.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProductsTable createAlias(String alias) {
    return $ProductsTable(_db, alias);
  }
}

abstract class _$ProductDatabase extends GeneratedDatabase {
  _$ProductDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $ProductsTable products = $ProductsTable(this);
  late final ProductDao productDao = ProductDao(this as ProductDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [products];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$ProductDaoMixin on DatabaseAccessor<ProductDatabase> {
  $ProductsTable get products => attachedDatabase.products;
}
