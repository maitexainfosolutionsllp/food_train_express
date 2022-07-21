class PantryCart
{
  String id;
  String pantry_food_id;
  String food_quantity;
  String payment_status;
  String order_status;

  PantryCart(this.id, this.pantry_food_id, this.food_quantity, this.payment_status, this.order_status);

  PantryCart.fromJson(Map<String,dynamic> json)
  {
    id= json['_id'];
    pantry_food_id= json['pantry_food_id'];
    food_quantity= json['quantity'];
    payment_status = json['payment_status'];
    order_status = json['order_status'];
  }

  Map<String,dynamic> toJson()
  {
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data['_id'] = this.id;
    data['pantry_food_id'] = this.pantry_food_id;
    data['quantity'] = this.food_quantity;
    data['payment_status'] = this.payment_status;
    data['order_status']   = this.order_status;
    
    return data;
  }

}
