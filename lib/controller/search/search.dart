import 'package:flutter/material.dart';
import 'package:qartfashion/controller/product/product_database.dart';
import 'package:qartfashion/ui/Screen/productDetail.dart';
import 'package:qartfashion/utils/SizeConfig.dart';

List<Product>? pro;

class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(onPressed: () {}, icon: Icon(Icons.clear))];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, "");
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Product> searchedTerm = [];
    final suggestions = query.isEmpty
        ? searchedTerm
        : pro!.where((element) => element.name!.contains(query));

    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: SizeConfig.heightMultiplier * 15,
            width: double.maxFinite,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0))),
              margin: EdgeInsets.all(10),
              child: Center(
                child: ListTile(
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailScreen(data: pro![index], products: pro)));
                    },
                    leading: CircleAvatar(
                      radius: SizeConfig.heightMultiplier * 4,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(pro![index].imageUrl!),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    title: Text(
                      "${pro![index].name}\n${pro![index].color}",
                      style:
                          TextStyle(fontSize: SizeConfig.textMultiplier * 1.5),
                    ),
                    subtitle: Text(
                      "OP:${pro![index].option}\nMax:${pro![index].qrCode}",
                      style:
                          TextStyle(fontSize: SizeConfig.textMultiplier * 1.5),
                    ),
                    trailing: Text(
                      "28,30,32\n34,36,38\n40,42",
                      textAlign: TextAlign.center,
                    )),
              ),
            ),
          );
        });
  }
}

getDataForSearch() async {
  final db = ProductDatabase();
  pro = await db.productDao.getAllProducts();
}
