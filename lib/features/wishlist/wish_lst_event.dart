part of 'wish_lst_bloc.dart';

@immutable
abstract class WishLstEvent {}

class WishListInitialEvent extends WishLstEvent{}

class WishListRemoveFromWishList extends WishLstEvent{
  final ProductDataModel productDataModel;
  WishListRemoveFromWishList({required this.productDataModel});
}