import 'dart:convert';
import 'package:fooddelivery/model/myorders.dart';
import 'package:fooddelivery/model/shop.dart';
import 'package:http/http.dart' as http;

class MyOrderService
{
  Future<List<MyOders>> getOrders() async {
    final url = 'http://192.168.1.51:5000/shop/view-shops';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var body = json.decode(response.body);

      List<MyOders> _data = List<MyOders>.from(
          body["data"].map((e) => MyOders.fromJson(e)).toList());

      return _data;
    }
    else {
      List<MyOders> _data = [];
      return _data;
    }
  }
}