import 'dart:convert';
import 'package:fooddelivery/model/pantryCart.dart';
import 'package:http/http.dart' as http;

class PantryCartService
{
  Future<List<PantryCart>> getCart() async {
    final url = 'http://192.168.1.56:5000/shop/view-user-cart/';
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
}