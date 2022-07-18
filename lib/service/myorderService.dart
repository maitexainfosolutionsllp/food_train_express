import 'dart:convert';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fooddelivery/model/myorders.dart';
import 'package:fooddelivery/provider/commonprovider.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class MyOrderService
{
  Future<List<MyOders>> getOrders(BuildContext context) async {
    final url = Provider.of<CommonProvider>(context).base_url+'/shop/view-orders-pantry';
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