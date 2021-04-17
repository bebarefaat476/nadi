import 'package:firebase_shop_app/core/providers/cart_provider.dart';
import 'package:firebase_shop_app/utils/view/constant_routs.dart';
import 'package:firebase_shop_app/view/shared/badge.dart';
import 'package:firebase_shop_app/view/widgets/products_grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/view/theme_manager.dart';

class FavouriteScreen extends StatelessWidget {
  final _showFavouriteOnly = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ThemeManager.appName),
        actions: [
          Consumer<CartProvider>(
            builder: (_, cartData, ch) {
              return Badge(
                value: cartData.itemsCount.toString(),
                child: ch,
                color: Color(0xFFFF324D),
              );
            },
            child: IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.grey[600]),
              onPressed: () {
                Navigator.pushNamed(context, cartScreenRoute);
              },
            ),
          ),
        ],
      ),
      body: ProductsGrid(_showFavouriteOnly),
    );
  }
}
