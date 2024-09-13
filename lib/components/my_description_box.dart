import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {

    //text style
    var myPrimaryTextStyle =
    TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyle =
    TextStyle(
      color: Theme.of(context).colorScheme.primary);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(19),
      ),
      padding:const EdgeInsets.all(25),
      margin:const EdgeInsets.only(left: 25,right:25 ,top:25 ),
      child:const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //delivery fee
          Column(
            children: [
            Text('₹100', ),
            Text('Delivery fee'),
          ],
          ),

          //delivery time
          Column(children: [
            Text('15-20 min'),
            Text('Delivery time '),
          ],
          ),
        ],
      ),
    );
  }
}