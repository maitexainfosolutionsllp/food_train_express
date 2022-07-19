import 'dart:convert';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fooddelivery/model/pantryCart.dart';
import 'package:fooddelivery/provider/commonprovider.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class PantryCartService
{
  Future<List<PantryCart>> getCart(BuildContext context, loginId) async {
    //final url = Provider.of<CommonProvider>(context).base_url+'/shop/view-user-cart/';
    final url = Provider.of<CommonProvider>(context).base_url+'/shop/view-user-pantry-cart/62bfd068a0b786ee2976d3d5';

    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      print(body);
    
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