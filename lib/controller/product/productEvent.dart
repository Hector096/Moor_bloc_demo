import 'package:equatable/equatable.dart';

abstract class ProductEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetProducts extends ProductEvent {

  GetProducts();

  @override
  String toString() => " {  }";

  Map toJson() => {};
  @override
  List<Object> get props => [int];
}


