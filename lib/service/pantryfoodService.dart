import 'dart:convert';
import 'package:fooddelivery/model/pantryfood.dart';
import 'package:http/http.dart' as http;

class PantryFoodService
{
  Future<List<PantryFoodModel>> getFoods() async {
    final url = 'http://192.168.1.56:5000/pantry-food/view-pantry-food';
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