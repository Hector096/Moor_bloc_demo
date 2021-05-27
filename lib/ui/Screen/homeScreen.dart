import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:qartfashion/controller/product/productBloc.dart';
import 'package:qartfashion/controller/product/productEvent.dart';
import 'package:qartfashion/controller/product/productModel.dart';
import 'package:qartfashion/controller/product/productState.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool loadingProgress = false;
  ProductBloc? _bloc;
  List<Product>? list;

  void initState() {
    super.initState();
    _bloc = ProductBloc(LoadingState());
    _bloc!.add(Products());
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LoadingOverlay(
          isLoading: loadingProgress,
          progressIndicator: CircularProgressIndicator(),
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
                  print(state.response.toString());
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
            child: list != null ? _buildProductScreen(list) : Container(),
          ),
        ),
      ),
    );
  }

  Widget _buildProductScreen(List<Product>? data) {
    return RefreshIndicator(
        onRefresh: refereshList,
        child: ListView.builder(
            physics: AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: data?.length,
            itemBuilder: (context, index) {
              return Container(
                child: Text("${data?[index].name}"),
              );
            }));
  }

  Future<Null> refereshList() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      _bloc!.add(Products());
    });
  }
}
