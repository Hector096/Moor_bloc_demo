import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:qartfashion/controller/product/productEvent.dart';
import 'package:qartfashion/controller/product/productRepo.dart';
import 'package:qartfashion/controller/product/productState.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepo repository = ProductRepo();

  ProductBloc(ProductState initialState) : super(initialState);

  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    if (event is GetProducts) yield* _getProduct(event);
  }

  Stream<ProductState> _getProduct(GetProducts event) async* {
    yield LoadingState();
    try {
      yield Success(await repository.getProducts());
    } catch (e) {
      print(e.toString());
      yield LoadingFailure();
    }
  }
}