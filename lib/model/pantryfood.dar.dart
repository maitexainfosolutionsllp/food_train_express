class PantryFoodModel
{
  String id;
  String pantry_id;
  String pantry_food_name;
  String pantry_food_category;
  String price;
  String image;

  PantryFoodModel(this.id, this.pantry_id, this.pantry_food_name, this.pantry_food_category, this.price, this.image);

  PantryFoodModel.fromJson(Map<String,dynamic> json)
  {
    id= json['_id'];
    pantry_id= json['pantry_id'];
    pantry_food_name= json['pantry_food_name'];
    pantry_food_category= json['pantry_food_category'];
    price = json['price'];
    image = json['image'];
  }

  Map<String,dynamic> toJson()
  {
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data['_id'] = this.id;
    data['pantry_id'] = this.pantry_id;
    data['pantry_food_name'] = this.pantry_food_name;
    data['pantry_food_category'] = this.pantry_food_category;
    data['price'] = this.price;
    data['image'] = this.image;


    return data;
  }

}
