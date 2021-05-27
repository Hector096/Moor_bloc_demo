// import 'dart:async';
// import 'package:bloc/bloc.dart';
// import 'package:challenge/home/homeEvent.dart';
// import 'package:challenge/home/homeState.dart';
// import 'package:challenge/product/productRepo.dart';

// class HomeBloc extends Bloc<HomeEvent, HomeState> {
//   final ProductRepo repository = ProductRepo();

//   HomeBloc(HomeState initialState) : super(initialState);

//   @override
//   Stream<HomeState> mapEventToState(HomeEvent event) async* {
//     if (event is UserAdded) yield* _getProduct(event);
//   }

//   Stream<HomeState> _getProduct(UserAdded event) async* {
//     yield LoadingState();
//     try {
//       yield Success(await repository.getProducts());
//     } catch (e) {
//       print(e.toString());
//       yield LoadingFailure();
//     }
//   }
// }
