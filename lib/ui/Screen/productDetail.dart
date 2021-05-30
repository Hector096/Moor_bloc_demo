import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:qartfashion/controller/product/product_database.dart';
import 'package:qartfashion/utils/SizeConfig.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product? data;
  final List<Product>? products;
  ProductDetailScreen({Key? key, @required this.data, @required this.products})
      : super(key: key);

  @override
  _ProductDetailScreenState createState() =>
      _ProductDetailScreenState(data, products);
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final Product? data;
  final List<Product>? products;
  _ProductDetailScreenState(this.data, this.products);

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Theme(
        data: ThemeData.light(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
            title: Text(
              data!.name!,
              style: TextStyle(color: Colors.grey[600]),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black54),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart, color: Colors.grey[700]))
            ],
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "6 Options(Tap to book)",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.textMultiplier * 1.5,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Overall Qty:${data!.minimumArticleQuantity}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.textMultiplier * 1.5,
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              Container(
                color: Colors.transparent,
                height: SizeConfig.heightMultiplier * 40,
                width: MediaQuery.of(context).size.width,
                child: GridView.count(
                    crossAxisCount: 3,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    children: products!.map((e) {
                      return GestureDetector(
                        onTap: () async {},
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10)),
                            child: Stack(
                              children: [
                                Positioned(
                                    child: Container(
                                  height: SizeConfig.imageSizeMultiplier * 30,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(e.imageUrl!),
                                          fit: BoxFit.fill)),
                                )),
                                Positioned(
                                    top: SizeConfig.heightMultiplier * 10.5,
                                    // left: SizeConfig.widthMultiplier * 10,
                                    left: 0,
                                    right: 0,
                                    child: Center(
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "${e.option}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: SizeConfig
                                                      .textMultiplier),
                                            ),
                                            Center(
                                                child: Text(
                                              "${e.color!}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: SizeConfig
                                                      .textMultiplier),
                                            )),
                                            Text(
                                              "${e.mrp}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: SizeConfig
                                                      .textMultiplier),
                                            )
                                          ],
                                        ),
                                      ),
                                    )),
                                Positioned(
                                    top: SizeConfig.heightMultiplier * 15,
                                    left: SizeConfig.widthMultiplier * 5,
                                    child: RatingBar.builder(
                                        initialRating: e.likeabilty!,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize:
                                            SizeConfig.heightMultiplier * 2,
                                        itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        }))
                              ],
                            )),
                      );
                    }).toList()),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              _buildTextFields("Brand-Category-Collection",
                  "${data!.brand} ${data!.category} ${data!.collection}"),
              _buildTextFields("Gender-Name-SubCategory",
                  "${data!.gender} ${data!.name} ${data!.subCategory}"),
              _buildTextFields("Fit-Theme-Finish",
                  "${data!.fit} ${data!.theme} ${data!.finish}"),
              _buildTextFields(
                  "OfferMont-Mood", "${data!.offerMonths} ${data!.mood}"),
              _buildTextFields("Description", "${data!.description}"),
              _buildTextFields(
                  "Colors-Finish", "${data!.color} ${data!.finish} "),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFields(String label, String placeholder) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, bottom: 15),
      child: TextField(
        readOnly: true,
        decoration: InputDecoration(
            labelText: label,
            focusColor: Colors.brown,
            labelStyle: TextStyle(color: Colors.brown),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Colors.brown),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide(color: Colors.brown)),
            hintText: placeholder,
            hintStyle: TextStyle(
                fontSize: SizeConfig.textMultiplier * 1.5,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
