class ShopFoodModel
{
  String id;
  String shop_id;
  String shop_food_name;
  String shop_food_category;
  String quantity;
  String price;
  String image;

  ShopFoodModel(this.id, this.shop_id, this.shop_food_name, this.shop_food_category, this.quantity, this.price, this.image);

  ShopFoodModel.fromJson(Map<String,dynamic> json)
  {
    id= json['_id'];
    shop_id= json['shop_id'];
    shop_food_name= json['shop_food_name'];
    shop_food_category= json['shop_food_category'];
    quantity= json['quantity'];
    price = json['price'];
    image = json['image'];
  }

  Map<String,dynamic> toJson()
  {
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data['_id'] = this.id;
    data['shop_id'] = this.shop_id;
    data['shop_food_name'] = this.shop_food_name;
    data['shop_food_category'] = this.shop_food_category;
    data['quantity'] = this.quantity;
    data['price'] = this.price;
    data['image'] = this.image;

    return data;
  }
}