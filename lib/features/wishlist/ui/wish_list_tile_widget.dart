import 'package:clean_arch_bloc/features/cart/cart_bloc.dart';
import 'package:clean_arch_bloc/features/wishlist/wish_lst_bloc.dart';
import 'package:flutter/material.dart';

import '../../home/models/home_product_data_model.dart';

class WishListTile extends StatelessWidget {
  final ProductDataModel productDataModel;
  final WishLstBloc wishLstBloc;

  const WishListTile(
      {super.key, required this.productDataModel, required this.wishLstBloc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(productDataModel.image),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            productDataModel.name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(productDataModel.category),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Qty: ${productDataModel.quantity}'),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border_outlined)),
                  IconButton(
                      onPressed: () {
                        wishLstBloc.add(WishListRemoveFromWishList(
                            productDataModel: productDataModel));
                      },
                      icon: const Icon(Icons.shopping_bag))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
