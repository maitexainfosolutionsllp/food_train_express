import 'dart:convert';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fooddelivery/model/shop.dart';
import 'package:fooddelivery/provider/commonprovider.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class ShopService
{
  Future<List<ShopModel>> getShops(BuildContext context) async {
    final url = Provider.of<CommonProvider>(context).base_url+'/shop/view-shops';
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