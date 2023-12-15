import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'wish_lst_event.dart';
part 'wish_lst_state.dart';

class WishLstBloc extends Bloc<WishLstEvent, WishLstState> {
  WishLstBloc() : super(WishLstInitial()) {
    on<WishLstEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
