import 'package:clean_arch_bloc/features/wishlist/ui/wish_list_tile_widget.dart';
import 'package:clean_arch_bloc/features/wishlist/wish_lst_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  WishLstBloc wishLstBloc = WishLstBloc();

  @override
  void initState() {
    wishLstBloc.add(WishListInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('WishList Items'),
      ),
      body: BlocConsumer<WishLstBloc, WishLstState>(
        bloc: wishLstBloc,
        listenWhen: (previous, current) => current is WishListActionState,
        buildWhen: (previous, current) => current is! WishListActionState,
        listener: (context, state) {},
        builder: (context, state) {
          switch (state.runtimeType) {
            case const (WishListSuccessState):
              final successState = state as WishListSuccessState;
              return ListView.builder(
                  itemCount: successState.wishListItems.length,
                  itemBuilder: (context, index) {
                    return WishListTile(
                      productDataModel: successState.wishListItems[index],
                      wishLstBloc: wishLstBloc,
                    );
                  });
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
