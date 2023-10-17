import 'dart:async';

import 'package:coffe_shop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'coffee_tile.dart';
import 'models/coffee.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

// add coffee to cart

void addToCart(Coffee coffee){
  Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);

  // let user know it add been successfully add masseage
    showDialog(context: context, 
    builder: (context) => AlertDialog(
      title: Text("successfully added to the cart", style: TextStyle(fontSize: 15)),
      ));

}





  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) =>  SafeArea(

        
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(

          
          children: [

            const SizedBox(height: 0),
            // heading message
            const Text(
              "How would you like your coffee?",
              style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 85, 85, 85),),
            ),

            const SizedBox(height: 25),

            // list of coffee to buy
            Expanded(
              child: ListView.builder(
                itemCount: value.coffeeShop.length,
                itemBuilder: (context, index){
                
                // get individual coffee
                Coffee eachCoffee = value.coffeeShop[index];
                
                
                // return the tile for this coffee

               return  CoffeeTile(
                
                coffee: eachCoffee, 
                icon: Icon(Icons.add),
               
                onPressed: () => addToCart(eachCoffee));
                }
                ),
              ),
            
          ],
        ),
      ))
      );
  }
}