import 'dart:convert';
import 'package:fooddelivery/model/pantryCart.dart';
import 'package:fooddelivery/provider/commonprovider.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class PantryCartService
{
  Future<List<PantryCart>> getCart() async {
    //final url = Provider.of<CommonProvider>(context).base_url+'/shop/view-user-cart/';
    final url = 'http://192.168.1.36:5000/shop/view-user-cart/';

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