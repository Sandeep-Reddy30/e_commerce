import 'package:e_commerce/models/cart_item.dart';
import 'package:e_commerce/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key,required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<restaurant>(
      builder: (
        context, 
        restaurant, 
        child) => 
        Container(
          child: Column(
            children: [
              Row(
                children: [
                  //food image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(cartItem.food.imagePath,
                    height: 50,
                    width: 100,
                    ),
                  ),
                  const SizedBox(width: 10),

                  //name & price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //food name
                      Text(cartItem.food.name),

                      //food price
                      Text('\₹'+ cartItem.food.price.toString()),

                    ],
                  )

                  //increment or decrement  quantity
                ],
              ),
              //addons
              ],
              )
          ),
          );
  }
}