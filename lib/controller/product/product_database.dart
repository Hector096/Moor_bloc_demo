import 'package:moor_flutter/moor_flutter.dart';

part 'product_database.g.dart';

class Products extends Table {
  // IntColumn get id => integer().autoIncrement()();
  TextColumn get brand => text().withLength(min: 0, max: 50)();
  TextColumn get mood => text().withLength(min: 0, max: 50)();
  TextColumn get gender => text().withLength(min: 0, max: 50)();
  TextColumn get theme => text().withLength(min: 0, max: 50)();
  TextColumn get category => text().withLength(min: 0, max: 50)();
  TextColumn get name => text().withLength(min: 0, max: 50)();
  TextColumn get color => text().withLength(min: 0, max: 50)();
  TextColumn get option => text().withLength(min: 0, max: 50)();
  RealColumn get mrp => real()();
  TextColumn get subCategory => text().withLength(min: 0, max: 50)();
  TextColumn get collection => text().withLength(min: 0, max: 50)();
  TextColumn get fit => text().withLength(min: 0, max: 50)();
  TextColumn get description => text().withLength(min: 0, max: 50)();
  TextColumn get qrCode => text().withLength(min: 0, max: 50)();
  TextColumn get ean => text().withLength(min: 0, max: 500)();
  TextColumn get fabric => text().withLength(min: 0, max: 50)();
  TextColumn get finish => text().withLength(min: 0, max: 50)();
  TextColumn get availableSizes => text().withLength(min: 0, max: 300)();
  TextColumn get offerMonths => text().withLength(min: 0, max: 300)();
  RealColumn get productClass => real()();
  BoolColumn get secondary => boolean().withDefault(const Constant(false))();
  BoolColumn get deactivated => boolean().withDefault(const Constant(false))();
  TextColumn get material => text().withLength(min: 0, max: 50)();
  TextColumn get quality => text().withLength(min: 0, max: 50)();
  TextColumn get qrCode2 => text().withLength(min: 0, max: 50)();
  TextColumn get displayName => text().withLength(min: 0, max: 50)();
  RealColumn get displayOrder => real()();
  RealColumn get minQuantity => real()();
  RealColumn get maxQuantity => real()();
  TextColumn get qpsCode => text().withLength(min: 0, max: 50)();
  TextColumn get image => text().withLength(min: 0, max: 50)();
  TextColumn get imageUrl => text().withLength(min: 0, max: 300)();
  BoolColumn get adShoot => boolean().withDefault(const Constant(false))();
  TextColumn get imageAlt => text().withLength(min: 0, max: 50)();
  BoolColumn get isCore => boolean().withDefault(const Constant(false))();
  RealColumn get minimumArticleQuantity => real()();
  RealColumn get likeabilty => real()();
  TextColumn get brandRank => text().withLength(min: 0, max: 50)();
  @override
  Set<Column> get primaryKey => {option};
}

// class Eans extends Table {
//   IntColumn get id => integer().autoIncrement()();
//   TextColumn get the2832 => text().withLength(min: 0, max: 50)();
//   TextColumn get the2834 => text().withLength(min: 0, max: 50)();
//   TextColumn get the2830 => text().withLength(min: 0, max: 50)();
//   TextColumn get the2930 => text().withLength(min: 0, max: 50)();
//   TextColumn get the2932 => text().withLength(min: 0, max: 50)();
//   TextColumn get the2934 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3030 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3032 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3034 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3130 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3132 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3134 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3230 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3232 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3234 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3330 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3332 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3334 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3430 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3432 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3434 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3630 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3632 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3634 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3830 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3832 => text().withLength(min: 0, max: 50)();
//   TextColumn get the3834 => text().withLength(min: 0, max: 50)();
//   TextColumn get the4030 => text().withLength(min: 0, max: 50)();
//   TextColumn get the4032 => text().withLength(min: 0, max: 50)();
//   TextColumn get the4034 => text().withLength(min: 0, max: 50)();
//   TextColumn get the4232 => text().withLength(min: 0, max: 50)();
//   TextColumn get the4234 => text().withLength(min: 0, max: 50)();
// }

// class ProductwithEan extends Table {
//   final Product? product;
//   final Eans? ean;

//   ProductwithEan({
//     @required this.ean,
//     @required this.product,
//   });
// }

@UseMoor(tables: [Products], daos: [ProductDao])
class ProductDatabase extends _$ProductDatabase {
  ProductDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'db.sqlite', logStatements: true));

  @override
  int get schemaVersion => 1;
  // @override
  // MigrationStrategy get migration => MigrationStrategy(beforeOpen:(details)async{
  //        final ProductDatabase db = ProductDatabase();
  //       await db.customStatement('PRAGMA foreign_keys = ON');
  // });
}

@UseDao(
  tables: [Products],
)
class ProductDao extends DatabaseAccessor<ProductDatabase>
    with _$ProductDaoMixin {
  final ProductDatabase db;

  ProductDao(this.db) : super(db);

  // Stream<List<ProductwithEan>> watchAllProducts() {
  //   return (select(products))
  //       .join(
  //         [
  //           leftOuterJoin(eans, eans.id.equalsExp(products.ean)),
  //         ],
  //       )
  //       .watch()
  //       .map((rows) => rows.map(
  //             (row) {
  //               return ProductwithEan(
  //                 ean: row.readTableOrNull(eans),
  //                 product: row.readTableOrNull(products),
  //               );
  //             },
  //           ).toList());
  // }
  Future<List<Product>> getAllProducts() => select(products).get();
  Future insertProduct(Insertable<Product> product) =>
      into(products).insert(product);
  Future updateProduct(Insertable<Product> product) =>
      update(products).replace(product);
  Future deleteProduct(Insertable<Product> product) =>
      delete(products).delete(product);
  Future deleteAllProducts() => delete(products).go();
}

// @UseDao(tables: [Eans])
// class EanDao extends DatabaseAccessor<ProductDatabase> with _$EanDaoMixin {
//   final ProductDatabase db;

//   EanDao(this.db) : super(db);

//   Stream<List<Ean>> watchEan() => select(eans).watch();
//   Future insertEan(Insertable<Ean> ean) => into(eans).insert(ean);
// }
