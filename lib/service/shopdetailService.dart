import 'dart:convert';
import 'package:fooddelivery/model/shop.dart';
import 'package:http/http.dart' as http;

class ShopDetailService
{
  Future<List<ShopModel>> getOrders() async {
    final url = 'http://192.168.1.35:5000/shop/view-shops-food/{shop_id}';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      print(body);
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