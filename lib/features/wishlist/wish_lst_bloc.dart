import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_arch_bloc/data/wish_list_item.dart';
import 'package:clean_arch_bloc/features/home/models/home_product_data_model.dart';
import 'package:meta/meta.dart';

part 'wish_lst_event.dart';

part 'wish_lst_state.dart';

class WishLstBloc extends Bloc<WishLstEvent, WishLstState> {
  WishLstBloc() : super(WishLstInitial()) {
    on<WishListInitialEvent>(wishListInitialEvent);
    on<WishListRemoveFromWishList>(wishListRemoveFromWishList);
  }

  FutureOr<void> wishListInitialEvent(
      WishListInitialEvent event, Emitter<WishLstState> emit) {
    emit(WishListSuccessState(wishListItems: wishItems));
  }

  FutureOr<void> wishListRemoveFromWishList(
      WishListRemoveFromWishList event, Emitter<WishLstState> emit) {
    wishItems.remove(event.productDataModel);
    emit(WishListSuccessState(wishListItems: wishItems));
  }
}
