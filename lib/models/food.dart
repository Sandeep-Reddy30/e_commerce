import 'package:flutter/material.dart';
//food items
class Food{
  final String name;        //cheese burger
  final String description; //a burger full of cheese
  final String imagePath;   //path of the image
  final double price;        //400
  final FoodCategory category;//burger
  List<addons> availableaddons;//extra cheese

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableaddons,
    });
}

//food catogories
enum FoodCategory{
  Drinks,
  Deserts,
  Reva_t_shirts,
  Burgers,
  Salad,
  Sides,
  }

//food addons
class addons{
  String name;
  double price;

  addons({
    required this.name,
    required this.price,
  }
  );
}
  

