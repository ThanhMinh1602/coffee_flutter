import 'package:coffee_flutter/models/product_model.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  int? quantity;
  ProductModel? productModel;
  CartModel();
  void addItemToCart(ProductModel pdm){
    listCart.add(pdm);
    print("Added to cart: ${pdm.name}");
    notifyListeners();
  }
  void removeItemFromCart(ProductModel pdm){
    listCart.remove(pdm);
       notifyListeners();
  }
}

List<ProductModel> listCart = [];
