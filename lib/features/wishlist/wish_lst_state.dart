part of 'wish_lst_bloc.dart';

@immutable
abstract class WishLstState {}

abstract class WishListActionState extends WishLstState {}

class WishLstInitial extends WishLstState {}

class WishListSuccessState extends WishLstState {
  final List<ProductDataModel> wishListItems;
  WishListSuccessState({required this.wishListItems});
}
