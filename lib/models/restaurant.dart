//RESTAURANT 


import 'package:collection/collection.dart';
import 'package:e_commerce/models/cart_item.dart';
import 'package:e_commerce/models/food.dart';
import 'package:flutter/material.dart';

class restaurant extends ChangeNotifier{
  //list of food menu

  final List<Food>_menu=[
       //drinks
    Food(
  name: "Apple juice",
  description: "A tasty fresh apple juice",
  imagePath: "assets/drinks.jpg",
  price: 160,
  category: FoodCategory.Drinks,
  availableaddons: [
    addons(name: "Extra ice", price: 179),
    addons(name: "Extra Apple", price: 159),
  ],
),
Food(
  name: "Sparkling Lemonade",
  description: "Refreshing lemonade with a sparkling twist, perfect for a sunny day",
  imagePath: "assets/drinks2.jpeg",
  price: 180,
  category: FoodCategory.Drinks,
  availableaddons: [
    addons(name: "Fresh Mint Leaves", price: 29),
    addons(name: "Lemon Wedges", price: 19),
  ],
),
Food(
  name: "Mint Mojito",
  description: "A classic cocktail made with fresh mint leaves, lime juice, and soda water",
  imagePath: "assets/drinks3.jpg",
  price: 220,
  category: FoodCategory.Drinks,
  availableaddons: [
    addons(name: "Extra Lime Wedges", price: 29),
    addons(name: "Splash of Rum", price: 89),
  ],
),
Food(
  name: "Iced Caramel Macchiato",
  description: "A delightful combination of espresso, caramel syrup, and cold milk, topped with whipped cream",
  imagePath: "assets/drinks4.jpg",
  price: 250,
  category: FoodCategory.Drinks,
  availableaddons: [
    addons(name: "Extra Caramel Drizzle", price: 39),
    addons(name: "Double Shot Espresso", price: 59),
  ],
),
Food(
  name: "Watermelon Mint Cooler",
  description: "Cool off with this refreshing blend of fresh watermelon juice and mint leaves",
  imagePath: "assets/drinks5.jpg",
  price: 190,
  category: FoodCategory.Drinks,
  availableaddons: [
    addons(name: "Splash of Vodka", price: 99),
    addons(name: "Extra Watermelon Slice", price: 29),
  ],
),
 //deserts
    Food(
  name: "Almond Fudge Brownie",
  description: "An Ice cream Cake in a Box! An extra fudge brownie,vanilla flavour",
  imagePath: "assets/deserts.jpg",
  price: 259,
  category: FoodCategory.Deserts,
  availableaddons: [
    addons(name: "Extra dio", price: 279),
    addons(name: "Extra brownie", price: 289),
  ],
),
Food(
  name: "Triple Chocolate Delight",
  description: "A decadent chocolate cake with layers of fudge and rich chocolate ice cream",
  imagePath: "assets/deserts2.jpeg",
  price: 349,
  category: FoodCategory.Deserts,
  availableaddons: [
    addons(name: "Extra Chocolate Sauce", price: 199),
    addons(name: "Whipped Cream", price: 149),
  ],
),
Food(
  name: "Caramel Crunch Sundae",
  description: "A delightful sundae with caramel swirls, crunchy nuts, and creamy vanilla ice cream",
  imagePath: "assets/deserts3.jpg",
  price: 299,
  category: FoodCategory.Deserts,
  availableaddons: [
    addons(name: "Extra Caramel Sauce", price: 159),
    addons(name: "Crushed Nuts", price: 139),
  ],
),
Food(
  name: "Berry Blast Cheesecake",
  description: "A rich cheesecake topped with mixed berry compote and fresh berries",
  imagePath: "assets/deserts.jpg",
  price: 329,
  category: FoodCategory.Deserts,
  availableaddons: [
    addons(name: "Extra Berry Compote", price: 199),
    addons(name: "Whipped Cream", price: 149),
  ],
),
Food(
  name: "Peanut Butter Chocolate Tart",
  description: "A creamy peanut butter filling in a chocolate crust, topped with ganache",
  imagePath: "assets/deserts5.jpg",
  price: 319,
  category: FoodCategory.Deserts,
  availableaddons: [
    addons(name: "Extra Ganache", price: 179),
    addons(name: "Chopped Peanuts", price: 129),
  ],
),



    //burgers
    Food(
      name: "Classic Cheese Burger", 
     description: "A juicy Chicken patty with melted tamato, and a hint of onion and sauce.",
     imagePath: "assets/burger.jpg", 
     price: 199,
     category: FoodCategory.Burgers,
      availableaddons: [
        addons(name: "Extra Cheese", price: 220),
        addons(name: "Extra Chicken", price: 220),
      ],
      ),
      Food(
      name: "Classic Cheese Veg-Burger", 
     description: "A juicy Paneer patty with melted tamato, and a hint of onion and sauce.",
     imagePath: "assets/burger2.jpg", 
     price: 149,
     category: FoodCategory.Burgers,
      availableaddons: [
        addons(name: "Extra Cheese", price: 170),
        addons(name: "Extra Paneer", price: 170),
      ],
      ),
      Food(
      name: "Aloo Tikki Burger", 
     description: "Mexican Aloo Tikki Burger",
     imagePath: "assets/burger3.jpeg", 
     price: 139,
     category: FoodCategory.Burgers,
      availableaddons: [
        addons(name: "Extra Cheese", price: 149),
        addons(name: "Extra Spicy", price: 139),
      ],
      ),
      Food(
      name: "Corn Burger", 
     description: "Corn and Spinach Burger",
     imagePath: "assets/burger4.jpeg", 
     price: 129,
     category: FoodCategory.Burgers,
      availableaddons: [
        addons(name: "Extra corn", price: 149),
        addons(name: "Extra Mayonnaise", price: 139),
      ],
      ),
      Food(
      name: "Tandoori Burger", 
     description: "(Flame & Grill) Tandoori Chicken Burger XL",
     imagePath: "assets/burger5.jpg", 
     price: 279,
     category: FoodCategory.Burgers,
      availableaddons: [
        addons(name: "Chocolate Mousse", price: 329),
        addons(name: "Extra Mayonnaise", price: 299),
      ],
      ),
 
    //salad
    Food(
      name: "Classic grilled Chicken Salad", 
     description: "Classic bowl of chicken salad is combination of boiled eggs,chicken,beans etc",
     imagePath: "assets/salad.jpg", 
     price: 349,
     category: FoodCategory.Salad,
      availableaddons: [
        addons(name: "Extra Chicken", price: 399),
        addons(name: "Black Olives", price: 389),
      ],
      ),
      Food(
      name: "Luxurious Fruit Crunch Salad", 
     description: "Ingrediants-Assorted lettuce,apples,orange,pineapple,re cherry,kiwi",
     imagePath: "assets/salad2.jpg", 
     price: 399,
     category: FoodCategory.Salad,
      availableaddons: [
        addons(name: "Extra Dressing", price: 339),
        addons(name: "Extra Cranberry Oats Cookies", price: 339),
      ],
      ),
      Food(
      name: "Chicken Caesar Salad", 
     description: "Nourishing salad bowl is a combination of fresh bell peppers, cabbage,chicken with assorted lettuce",
     imagePath: "assets/salad3.jpg", 
     price: 329,
     category: FoodCategory.Salad,
      availableaddons: [
        addons(name: "Extra Chicken", price: 419),
        addons(name: "Black Olives", price: 359),
      ],
      ),
      Food(
      name: "Smoke House Greek Salad", 
     description: "",
     imagePath: "assets/salad4.jpg", 
     price: 349,
     category: FoodCategory.Salad,
      availableaddons: [
        addons(name: "Extra Chicken", price: 399),
        addons(name: "Black Olives", price: 389),
      ],
      ),
      Food(
      name: "Classic grilled Chicken Salad", 
     description: "Classic bowl of chicken salad with flavour of greek is combination of boiled eggs,chicken,beans etc",
     imagePath: "assets/salad5.jpg", 
     price: 410,
     category: FoodCategory.Salad,
      availableaddons: [
        addons(name: "Extra Chicken", price: 399),
        addons(name: "Black Olives", price: 389),
      ],
      ),
    
   
    //sides
    Food(
      name: "Classic fries with dips", 
     description: "Served with home made Ketchup & spiced gralic dip",
     imagePath: "assets/sides.jpg", 
     price: 248,
     category: FoodCategory.Sides,
      availableaddons: [
        addons(name: "Extra Chicken", price: 399),
        addons(name: "Black Olives", price: 389),
      ],
      ),
      Food(
  name: "Crispy Potato Wedges",
  description: "Accompanied by tangy BBQ sauce & creamy herb dip",
  imagePath: "assets/sides2.jpg",
  price: 299,
  category: FoodCategory.Sides,
  availableaddons: [
    addons(name: "Grilled Bacon", price: 249),
    addons(name: "Jalapenos", price: 199),
  ],
),
Food(
  name: "Spicy Sweet Potato Fries",
  description: "Paired with zesty chipotle aioli & cool ranch dip",
  imagePath: "assets/sides3.jpg",
  price: 279,
  category: FoodCategory.Sides,
  availableaddons: [
    addons(name: "Cheddar Cheese", price: 199),
    addons(name: "Green Peppers", price: 179),
  ],
),
Food(
  name: "Garlic Parmesan Fries",
  description: "Served with truffle mayo & marinara sauce",
  imagePath: "assets/sides4.jpeg",
  price: 259,
  category: FoodCategory.Sides,
  availableaddons: [
    addons(name: "Crumbled Bacon", price: 299),
    addons(name: "Chopped Jalapenos", price: 189),
  ],
),
Food(
  name: "Loaded Cheese Fries",
  description: "Topped with melted cheddar & served with tangy salsa and sour cream",
  imagePath: "assets/sides5.jpeg",
  price: 289,
  category: FoodCategory.Sides,
  availableaddons: [
    addons(name: "Diced Ham", price: 219),
    addons(name: "Green Onions", price: 179),
  ],
),
//Reva t-shirts
    Food(
  name: "Black Floral Print T-Shirt",
  description: "Elegant black t-shirt featuring a delicate floral print",
  imagePath: "assets/reva1.jpg",
  price: 599, // Price in rupees
  category: FoodCategory.Reva_t_shirts,
  availableaddons: [
    addons(name: "Pocket", price: 99),
    addons(name: "Embroidery", price: 149),
  ],
),

Food(
  name: "Striped Polo Shirt",
  description: "Classic polo shirt with stylish striped pattern",
  imagePath: "assets/reva4.jpg",
  price: 899, // Price in rupees
  category: FoodCategory.Reva_t_shirts,
  availableaddons: [
    addons(name: "Logo Patch", price: 79),
    addons(name: "Contrast Collar", price: 129),
  ],
),

Food(
  name: "Denim Button-Up Shirt",
  description: "Casual denim shirt with button-up closure",
  imagePath: "assets/reva3.jpg",
  price: 1299, // Price in rupees
  category: FoodCategory.Reva_t_shirts,
  availableaddons: [
    addons(name: "Pocket Square", price: 199),
    addons(name: "Distressed Detailing", price: 249),
  ],
),

Food(
  name: "Graphic Print T-Shirt",
  description: "Vibrant t-shirt featuring eye-catching graphic print",
  imagePath: "assets/reva2.jpg",
  price: 449, // Price in rupees
  category: FoodCategory.Reva_t_shirts,
  availableaddons: [
    addons(name: "Custom Name", price: 69),
    addons(name: "Foil Print", price: 119),
  ],
),

Food(
  name: "Oxford Button-Down Shirt",
  description: "Sophisticated button-down shirt in classic Oxford fabric",
  imagePath: "assets/reva5.jpeg",
  price: 1599, // Price in rupees
  category: FoodCategory.Reva_t_shirts,
  availableaddons: [
    addons(name: "Monogram Embroidery", price: 149),
    addons(name: "Contrast Stitching", price: 199),
  ],
)
  ];

  /*
   G E T T E R S
  */
  List<Food>get menu=>_menu;
  List<CartItem> get Cart =>_cart;

  /*
   O P E R A T I O N S  
  */

  //user cart

final List<CartItem>_cart=[];

  // add to  cart
  void addTocart(Food food,List<addons> selectedaddons){
     CartItem? cartItem=_cart.firstWhereOrNull((item) {
      bool isSameFood=item.food==food;
      bool isSameaddons=ListEquality().equals(item.selectedaddons,selectedaddons);
      return isSameFood&& isSameaddons;

    });

    //if items exist add quantity
    if(CartItem !=null){
        cartItem?.quantity++;
    }

    //otherwise add new cart item

    else{
      _cart.add(
        CartItem(
          food:food,
          selectedaddons:selectedaddons,
        ),
      );
    }

    notifyListeners();
  }
  // remove from cart

  void removeFromCart(CartItem cartItem)  {
    int cartIndex = _cart.indexOf(cartItem);

    if(cartIndex !=-1){
      if(_cart[cartIndex].quantity>1){
        _cart[cartIndex].quantity--;
      }
      else{
        _cart.removeAt(cartIndex);
      }

    }
    notifyListeners();
  }
  // get total price in cart
  //..

  double getTotalPrice(){
    double total = 0.0;

    for(CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for (addons addon in cartItem.selectedaddons){
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }
    //total items in cart

    int getTotalItemCount(){
      int getTotalItemCount = 0;

      for (CartItem cartItem in _cart){
        getTotalItemCount += cartItem.quantity;
      }
      return getTotalItemCount;
    }
  //clear items in cart
  void clearCart(){
    _cart.clear();
    notifyListeners();
  }

  /*
   H E L P E R S
  */
  //generate the reciept
  //format double value into money
  //format list  of addons into a string summary
}

//1:00