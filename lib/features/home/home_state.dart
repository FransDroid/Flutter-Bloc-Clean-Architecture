part of 'home_bloc.dart';

//This abstract class HomeState handles building ui
@immutable
abstract class HomeState {}
//This abstract class handles action state
abstract class HomeActionState extends HomeState{}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState{}

class HomeLoadedSuccessState extends HomeState{
  final List<ProductDataModel> products;
  HomeLoadedSuccessState({required this.products});
}

class HomeErrorState extends HomeState{}


//Action State Classes
class HomeNavigateToWishLstPageActionState extends HomeActionState{}

class HomeNavigateToCartPageActionState extends HomeActionState{}

class HomeProductItemWishListedActionState extends HomeActionState{}

class HomeProductItemCartedActionState extends HomeActionState{}