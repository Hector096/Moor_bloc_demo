import 'package:another_flushbar/flushbar.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:qartfashion/controller/product/productBloc.dart';
import 'package:qartfashion/controller/product/productEvent.dart';
import 'package:qartfashion/controller/product/productState.dart';
import 'package:qartfashion/controller/product/product_database.dart';
import 'package:qartfashion/controller/search/search.dart';
import 'package:qartfashion/ui/Screen/productDetail.dart';
import 'package:qartfashion/utils/SizeConfig.dart';
import 'package:qartfashion/utils/loadingWidget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool loadingProgress = false;
  ProductBloc? _bloc;
  List<Product>? list;
  double? lastPrice = 0;

  void initState() {
    _bloc = ProductBloc(LoadingState());
    _bloc!.add(GetProducts());

    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              _buildHeader(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: LoadingOverlay(
                    isLoading: loadingProgress,
                    color: Colors.transparent,
                    progressIndicator: ColorLoader3(),
                    child: BlocListener<ProductBloc, ProductState>(
                      bloc: _bloc,
                      listener: (context, state) {
                        if (state is LoadingState) {
                          setState(() {
                            loadingProgress = true;
                          });
                        } else {
                          setState(() {
                            loadingProgress = false;
                          });
                        }
                        if (state is Success) {
                          if (state.response != null) {
                            list = state.response;
                          } else {
                            Flushbar(
                              message: "Invalid credentials",
                              duration: Duration(seconds: 2),
                              backgroundColor: Colors.red,
                            )..show(context);
                          }
                        }
                        if (state is LoadingFailure) {
                          Flushbar(
                            message: "Something Went Wrong..",
                            duration: Duration(seconds: 2),
                            backgroundColor: Colors.red,
                          )..show(context);
                        }
                      },
                      child: list != null ? _buildProductScreen() : Container(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildProductScreen() {
    return RefreshIndicator(
        onRefresh: refereshList,
        backgroundColor: Colors.transparent,
        child: GridView.count(
            childAspectRatio: 1.0,
            padding: EdgeInsets.only(left: 16, right: 16),
            crossAxisCount: 2,
            crossAxisSpacing: 18,
            mainAxisSpacing: 18,
            children: list!.map((e) {
              return GestureDetector(
                onTap: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailScreen(data: e, products: list)));
                  // }
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          height: SizeConfig.imageSizeMultiplier * 25,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, left: 10, right: 10),
                              child:
                                  // Hero(
                                  //     tag: 'hero_image_${e.option}',
                                  // child:
                                  Image.network(e.imageUrl!)
                              //  ),
                              )),
                      SizedBox(
                        height: 15,
                      ),
                      Text("${e.name!} ${e.theme!}"),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Rs ${e.mrp}",
                      ),
                    ],
                  ),
                ),
              );
            }).toList()));
  }

  Future<Null> refereshList() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      _bloc!.add(GetProducts());
    });
  }

  Widget _buildBottomNavigationBar() => BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[300],
        elevation: 4,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.shopping_basket,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.shopping_cart,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.wb_sunny,
            ),
          )
        ],
      );

  Widget _buildHeader() {
    Widget _buildGroup(bool selected, IconData icon) {
      return Row(
        children: [
          Icon(
            icon,
            color: selected ? Colors.black : Colors.grey[300],
            size: 13,
          ),
          const SizedBox(
            width: 3,
          ),
          Text(
            'Clothing',
            style: TextStyle(
              fontSize: 13,
              color: selected ? Colors.black : Colors.grey,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      );
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'QArt Fashion',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 26,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey[400],
                  ),
                  onPressed: () {
                    showSearch(context: context, delegate: DataSearch());
                  },
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey[300]!,
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(children: [
                _buildGroup(true, Icons.battery_charging_full),
                const SizedBox(
                  width: 20,
                ),
                _buildGroup(false, Icons.shopping_basket),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
