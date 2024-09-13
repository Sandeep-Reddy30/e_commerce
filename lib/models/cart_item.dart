import 'package:e_commerce/models/food.dart';

class CartItem{
  Food food;
  List<addons> selectedaddons;
  int quantity;

  CartItem({
      required this.food,
      required this. selectedaddons,
      this.quantity=1,

  });
   double get totalPrice{
    double addonsPrice=
    selectedaddons.fold(0, (sum, addons) => sum+addons.price);
    return(food.price+addonsPrice)*quantity;
   }
}