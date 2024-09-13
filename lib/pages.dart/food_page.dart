
//food_page
  

  import 'package:e_commerce/components/my_button.dart';
import 'package:e_commerce/models/food.dart';
import 'package:e_commerce/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<addons,bool> selectedaddons ={};
   FoodPage({
    super.key,
    required this.food,
    }){
      //initialize selected addons to be false
      for(addons addon in food.availableaddons){
        selectedaddons[addon]=false;
      }
    }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  //method to add to cart
  void addTocart(Food food,Map<addons, bool> selectedaddons){

    Navigator.pop(context);
    List<addons> currentlySelectedAddons=[];
    for (addons addon in widget.food.availableaddons){
      if(widget.selectedaddons[addon] == true){
        currentlySelectedAddons.add(addon);
      }
    }
    //add to cart
    context.read<restaurant>().addTocart(food, currentlySelectedAddons);


  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
     //scaffold ui
Scaffold(  
      body: SingleChildScrollView(
        child: Column(
        children: [

          //food image
          Image.asset(widget.food.imagePath),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //food name
            Text(
              widget.food.name,
              style:const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway',
                fontSize: 25),
            ),
             //food price
            Text("\₹"+widget.food.price.toString(),
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
                fontSize: 15),
                ),
                const SizedBox(height: 20),
            
            //food description
            Text(widget.food.description),
            const SizedBox(height: 20),
            Divider(color: Theme.of(context).colorScheme.secondary,),

            //addons
            Text(
              "Add-Ons",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                ),
            ),
              const SizedBox(height: 20),

            
            Container(
              decoration: BoxDecoration(border: Border.all(color: Theme.of(context).colorScheme.primary,
              ),
              borderRadius: BorderRadius.circular(30),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: widget.food.availableaddons.length,
                itemBuilder: (context,index) {
              
                  //get individual addons
                   addons addon=widget.food.availableaddons[index];
              
                  //return check box ui
                return CheckboxListTile(
                  title: Text(addon.name),
                  subtitle: Text("\₹"+addon.price.toString()
                  ),
                  value: widget.selectedaddons[addon],
                   onChanged: (bool? value){
                    setState(() {
                      widget.selectedaddons[addon] = value!;
                    });
                   },
                );
              },  
              ),
            ),
            
            ],),
          ),

          //buttons -> add  to cart
          MyButton(
            onTap: () => addTocart(widget.food,widget.selectedaddons),
            text: "Add to Cart",
             ),
             const SizedBox(height: 60),
        ],
      ),
      ),
    ),

     //backbutton

     SafeArea(
       child: Opacity(
        opacity: 0.7,
         child: Container(
          margin: EdgeInsets.only(left: 13),
          decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary,
          shape: BoxShape.circle,
          ),
         child: IconButton(icon: Icon(Icons.arrow_back_ios_new_rounded),
         onPressed: ()=>Navigator.pop(context),
         ),
         ),
       ),
     ),
      ],
    );

  }
}