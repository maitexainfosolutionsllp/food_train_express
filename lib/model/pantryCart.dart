class PantryCart
{
  String id;
  String pantry_food_id;
  String food_quantity;

  PantryCart(this.id, this.pantry_food_id, this.food_quantity);

  PantryCart.fromJson(Map<String,dynamic> json)
  {
    id= json['_id'];
    pantry_food_id= json['pantry_food_id'];
    food_quantity= json['quantity'];
  }

  Map<String,dynamic> toJson()
  {
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data['_id'] = this.id;
    data['pantry_food_id'] = this.pantry_food_id;
    data['quantity'] = this.food_quantity;
    
    return data;
  }

}
