import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fooddelivery/model/pantryCart.dart';
import 'package:fooddelivery/provider/commonprovider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartProvider with ChangeNotifier {
//  DBHelper dbHelper = DBHelper();
 int _counter = 0;
 int _quantity = 1;
 int get counter => _counter;
 int get quantity => _quantity;

 double _totalPrice = 0.0;
 double get totalPrice => _totalPrice;

 List<PantryCart> cart = [];

 Future<List<PantryCart>> getCart(BuildContext context, loginId) async {
    //final url = Provider.of<CommonProvider>(context).base_url+'/shop/view-user-cart/';
    final url = Provider.of<CommonProvider>(context).base_url+'/shop/view-user-pantry-cart/62bfd068a0b786ee2976d3d5';

    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
        
    List<PantryCart> _data = List<PantryCart>.from(
          body["data"].map((e) => PantryCart.fromJson(e)).toList());

      return _data;
    }
    else {
      List<PantryCart> _data = [];
      return _data;
    }
  }

 void _setPrefsItems() async {
   SharedPreferences prefs = await SharedPreferences.getInstance();
   prefs.setInt('cart_items', _counter);
   prefs.setInt('item_quantity', _quantity);
   prefs.setDouble('total_price', _totalPrice);
   notifyListeners();
 }

 void _getPrefsItems() async {
   SharedPreferences prefs = await SharedPreferences.getInstance();
   _counter = prefs.getInt('cart_items') ?? 0;
   _quantity = prefs.getInt('item_quantity') ?? 1;
   _totalPrice = prefs.getDouble('total_price') ?? 0;
 }

 void addCounter() {
   _counter++;
   _setPrefsItems();
   notifyListeners();
 }

 void removeCounter() {
   _counter--;
   _setPrefsItems();
   notifyListeners();
 }

 int getCounter() {
   _getPrefsItems();
   return _counter;
 }

 void removeItem(int id) {
   final index = cart.indexWhere((element) => element.id == id);
   cart.removeAt(index);
   _setPrefsItems();
   notifyListeners();
 }

 int getQuantity(int quantity) {
   _getPrefsItems();
   return _quantity;
 }

 void addTotalPrice(double productPrice) {
   _totalPrice = _totalPrice + productPrice;
   _setPrefsItems();
   notifyListeners();
 }

 void removeTotalPrice(double productPrice) {
   _totalPrice = _totalPrice - productPrice;
   _setPrefsItems();
   notifyListeners();
 }

 double getTotalPrice() {
   _getPrefsItems();
   return _totalPrice;
 }
}