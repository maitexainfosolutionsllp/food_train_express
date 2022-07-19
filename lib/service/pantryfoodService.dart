import 'dart:convert';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fooddelivery/model/pantryfood.dart';
import 'package:fooddelivery/provider/commonprovider.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class PantryFoodService
{
  Future<List<PantryFoodModel>> getFoods(BuildContext context) async {
    final url = Provider.of<CommonProvider>(context).base_url+'/pantry-food/view-pantry-food';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
    
      List<PantryFoodModel> _data = List<PantryFoodModel>.from(
          body["data"].map((e) => PantryFoodModel.fromJson(e)).toList());

      return _data;
    }
    else {
      List<PantryFoodModel> _data = [];
      return _data;
    }
  }
}