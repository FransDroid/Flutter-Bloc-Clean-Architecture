import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_arch_bloc/data/cart_items.dart';
import 'package:meta/meta.dart';

import '../home/models/home_product_data_model.dart';

part 'cart_event.dart';

part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
    on<CartRemoveFromCartEvent>(cartRemoveFromCartEvent);
  }

  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSuccessState(cartItems: cartItems));
  }

  FutureOr<void> cartRemoveFromCartEvent(
      CartRemoveFromCartEvent event, Emitter<CartState> emit) {
    //get your cart items
    //check if product model is there = always = true
    //run a function to remove that product model from car item
    // emit cartItemRemoved state
    cartItems.remove(event.productModel);
    emit(CartSuccessState(cartItems: cartItems));
  }
}
