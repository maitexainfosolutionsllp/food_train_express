import 'dart:convert';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fooddelivery/model/shopfood.dart';
import 'package:fooddelivery/provider/commonprovider.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class ShopDetailService
{
  Future<List<ShopFoodModel>> getShopFoods(BuildContext context) async {
    final url = Provider.of<CommonProvider>(context).base_url+'/shop/view-shops-food/62c40426556a256770b611f3';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      print(body);
      List<ShopFoodModel> _data = List<ShopFoodModel>.from(
          body["data"].map((e) => ShopFoodModel.fromJson(e)).toList());

      return _data;
    }
    else {
      List<ShopFoodModel> _data = [];
      return _data;
    }
  }
}