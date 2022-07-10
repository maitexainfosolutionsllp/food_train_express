class ShopModel {
  String id;
  String login_id;
  String shop_name;
  String contact_no;
  String station_name;

  ShopModel(this.id, this.login_id, this.shop_name, this.contact_no, this.station_name);

  ShopModel.fromJson(Map<String,dynamic> json)
  {
    id= json['_id'];
    login_id= json['login_id'];
    shop_name= json['shop_name'];
    contact_no= json['contact_no'];
    station_name = json['station_name'];
  }

  Map<String,dynamic> toJson()
  {
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data['_id'] = this.id;
    data['login_id'] = this.login_id;
    data['shop_name'] = this.shop_name;
    data['contact_no'] = this.contact_no;
    data['station_name'] = this.station_name;

    return data;
  }
}