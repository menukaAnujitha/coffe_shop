import 'package:coffe_shop/models/coffee.dart';
import 'package:flutter/material.dart';



class CoffeeShop extends ChangeNotifier {

  // coffee for sale list

  final List<Coffee> _shop = [

    
    Coffee(
      name: 'Long Black',
      price: "4.10",
      ImagePath: "lib/images/tea.png",
    ),


    Coffee(
      name: 'Latte',
      price: "4.10",
      ImagePath: "lib/images/coffe.png",
    ),


    Coffee(
      name: 'Long Black',
      price: "4.10",
      ImagePath: "lib/images/latte.png",
    ),


    Coffee(
      name: 'Espresso',
      price: "4.10",
      ImagePath: "lib/images/iced-coffee.png",
    ),
  ];

  
  // user cart

  List<Coffee> _userCart = [];


  // get coffee list

  List<Coffee> get coffeeShop => _shop;

  // get user dart

  List<Coffee> get userCart => _userCart;

  // add item to cart

  void addItemToCart(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }
  // remove item from cart

  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
     notifyListeners();
  }
}