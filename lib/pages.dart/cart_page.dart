
import 'package:e_commerce/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<restaurant>(builder: (context,restaurant,child){
      //cart
      final userCart = restaurant.Cart;

      //scaffold ui
      return Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
          backgroundColor: Colors.white,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: userCart.length,
                itemBuilder: (context,index){
                  //get individual cart item
                  final cartItem = userCart[index];

                  //return cart tile ui
                  return ListTile(
                    title: Text(cartItem.food.name),
                  );
                },
                ),
            ),
          ],
            ),
            );
    },
    );
  }
}