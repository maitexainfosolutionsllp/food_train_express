import 'dart:convert';
import 'package:fooddelivery/model/shop.dart';
import 'package:http/http.dart' as http;

class ShopService
{
  Future<List<ShopModel>> getShops() async {
    final url = 'http://192.168.1.51:5000/shop/view-shops';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var body = json.decode(response.body);

      List<ShopModel> _data = List<ShopModel>.from(
          body["data"].map((e) => ShopModel.fromJson(e)).toList());

      return _data;
    }
    else {
      List<ShopModel> _data = [];
      return _data;
    }
  }
}