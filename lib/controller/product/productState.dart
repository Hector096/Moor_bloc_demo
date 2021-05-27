
import 'package:equatable/equatable.dart';
import 'package:qartfashion/controller/product/productModel.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

class LoadingState extends ProductState {}

class Success extends ProductState {
  final List<Product>? response;

  const Success([this.response]);

  @override
  List<Object> get props => [response!];

  @override
  String toString() => 'Success { Product: $response}';
}

class LoadingFailure extends ProductState {}
