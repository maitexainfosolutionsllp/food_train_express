import 'package:fooddelivery/model/pantryfood.dart';

class MyOders
{

  String id;
  String pantry_food_id;
  String login_id;
  String quantity;
  String payment_status;
  String order_status;
  //List<PantryFoodModel> pantryOrderList = [];
  PantryFoodModel pantryOrderList;


  MyOders(this.id, this.pantry_food_id, this.login_id, this.quantity, this.payment_status, this.order_status, this.pantryOrderList);

  MyOders.fromJson(Map<String,dynamic> json)
  {
    id= json['_id'];
    pantry_food_id= json['pantry_food_id'];
    login_id= json['login_id'];
    quantity= json['quantity'];
    payment_status = json['payment_status'];
    order_status = json['order_status'];
    pantryOrderList = PantryFoodModel.fromJson(json['pantry']);

    // if (json['pantry'] != null) {
    //   for (Iterable row in json['pantry']) {
    //     if (row == null) continue;
    //     for (Map map in row) {
    //       pantryOrderList.add(PantryFoodModel.fromJson(map));
    //     }
    //   }
    // }
    
  }

  Map<String,dynamic> toJson()
  {
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data['_id'] = this.id;
    data['pantry_food_id'] = this.pantry_food_id;
    data['login_id'] = this.login_id;
    data['quantity'] = this.quantity;
    data['payment_status'] = this.payment_status;
    data['order_status'] = this.order_status;
    data['pantry'] = this.pantryOrderList;

    return data;
  }

}
