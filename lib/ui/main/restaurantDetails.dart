import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/main.dart';
import 'package:fooddelivery/model/categories.dart';
import 'package:fooddelivery/model/mostpopular.dart';
import 'package:fooddelivery/model/restourant.dart';
import 'package:fooddelivery/model/shopfood.dart';
import 'package:fooddelivery/model/topRestourants.dart';
import 'package:fooddelivery/provider/commonprovider.dart';
import 'package:fooddelivery/service/shopdetailService.dart';
import 'package:fooddelivery/ui/main/home.dart';
import 'package:fooddelivery/ui/menu/menu.dart';
import 'package:fooddelivery/widget/iboxCircle.dart';
import 'package:fooddelivery/widget/icard12.dart';
import 'package:fooddelivery/widget/icard13.dart';
import 'package:fooddelivery/widget/iinkwell.dart';
import 'package:fooddelivery/widget/ilist1.dart';
import 'package:fooddelivery/widget/row_builder.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'header.dart';

class RestaurantDetailsScreen extends StatefulWidget {
  RestaurantDetailsScreen({Key key}) : super(key: key);
  @override
  _RestaurantDetailsScreenState createState() => _RestaurantDetailsScreenState();
}

class _RestaurantDetailsScreenState extends State<RestaurantDetailsScreen> with SingleTickerProviderStateMixin {

  ShopDetailService _shopDetailService = new ShopDetailService();
  String shopId;
  String shopName;
  String shopContact;
  String shopStation;


  ///////////////////////////////////////////////////////////////////////////////
  //

  _onCategoriesClick(String id, String heroId){
    print("User pressed Category item with id: $id");
    idHeroes = heroId;
  }

  _onDishesClick(String id, String heroId){
    print("User pressed Most Popular item with id: $id");
    idDishes = id;
    idHeroes = heroId;
    route.setDuration(1);
    route.push(context, "/shopdishesdetails");
  }

  ///////////////////////////////////////////////////////////////////////////////
  var windowWidth;
  var windowHeight;
  var _controller = ScrollController();
  Restourant _this;

  _load(String id){
    for (var item in topRestourant)
      if (item.id == id)
        _this = item;
  }

  @override
  void initState() {
    _load(idRestaurant);
    shopId = idRestaurant;
    super.initState();
    getShopDetail(shopId);
  }

  @override
  void dispose() {
    route.disposeLast();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    windowWidth = MediaQuery.of(context).size.width;
    windowHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        drawer: Menu(context: context, ),
        backgroundColor: theme.colorBackground,
        body: NestedScrollView(
          controller: _controller,
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  expandedHeight: windowHeight*0.35,
                  automaticallyImplyLeading: false,
                  pinned: true,
                  elevation: 0,
                  backgroundColor: theme.colorPrimary,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: _imageBuild(),
                  ),
                  title: Container(
                      child: Header(nomenu: true, white: true, transparent: true) // Home
                  ),
                )];
            },

            body: Stack (
              children: <Widget>[

                Container(
                  child: _body(),
                ),

              ],
            )
        ));
  }

  _body(){
    var height = windowWidth*0.5*0.8;
    return Container(
      child: ListView(
        padding: EdgeInsets.only(top: 0),
        children: <Widget>[
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: IList1(imageAsset: "assets/orders.png", text: this.shopName.toString(),                // dish name
                textStyle: theme.text16bold, imageColor: theme.colorDefaultText),
          ),
          SizedBox(height: 20,),

          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: IList1(imageAsset: "assets/info.png", text: 'Station: '+shopStation.toString(),                 // Information
                textStyle: theme.text16bold, imageColor: theme.colorDefaultText),
          ),
      Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Text("Contact: "+shopContact.toString(), style: theme.text14)
            ),
            IInkWell(child: IBoxCircle(child: _icon(), color: Colors.white,), onPress: _callMe,)
          ],
        ),
      ),SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: IList1(imageAsset: "assets/top.png", text: strings.get(91),                // Dishes
                textStyle: theme.text16bold, imageColor: theme.colorDefaultText),
          ),

          shopFoodList(),


          // Container(
          //   margin: EdgeInsets.only(left: 5, right: 5),
          //   child: Row(
          //     children: <Widget>[
          //       ICard13(
          //         color: theme.colorBackground,
          //         text: "item.text",
          //         width: windowWidth * 0.5 - 15,
          //         height: height,
          //         image: "item.image",
          //         id: "t1",
          //         stars: 4,
          //         colorStars: theme.colorPrimary,
          //         textStyle: theme.text16bold,
          //         callback: _onDishesClick,
          //       ),
          //       SizedBox(width: 10,),
          //       ICard13(
          //         color: theme.colorBackground,
          //         text: "item.text",
          //         width: windowWidth * 0.5 - 15,
          //         height: height,
          //         image: "item.image",
          //         id: "t2",
          //         stars: 4,
          //         colorStars: theme.colorPrimary,
          //         textStyle: theme.text16bold,
          //         callback: _onDishesClick,
          //       )
          //     ],
          //   ),
          // )

        ],
      ),
    );
  }

  _children(){
    var list = List<Widget>();

    list.add(SizedBox(height: 20,));

    list.add(Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: IList1(imageAsset: "assets/orders.png", text: "_this.text",                // dish name
        textStyle: theme.text16bold, imageColor: theme.colorDefaultText),
    ));

    list.add(SizedBox(height: 20,));

    list.add(Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Text(strings.get(0), style: theme.text14),                                               // dish description
    ));

    list.add(SizedBox(height: 20,));

    list.add(_horizontalImages());                                                                    // dish images

    list.add(SizedBox(height: 20,));

    list.add(Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: IList1(imageAsset: "assets/info.png", text: strings.get(69),                 // Information
        textStyle: theme.text16bold, imageColor: theme.colorDefaultText),
    ));

    list.add(_phone());

    list.add(SizedBox(height: 20,));

    list.add(_workTime());

    list.add(SizedBox(height: 20,));

    list.add(Container(
      margin: EdgeInsets.only(left: 20),
      child: IList1(imageAsset: "assets/categories.png", text: strings.get(92),             // "Menu",
        textStyle: theme.text16bold, imageColor: theme.colorDefaultText),
    ));

    list.add(SizedBox(height: 10,));

    list.add(_horizontalCategories());

    list.add(SizedBox(height: 20,));

    list.add(Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: IList1(imageAsset: "assets/top.png", text: strings.get(91),                // Dishes
        textStyle: theme.text16bold, imageColor: theme.colorDefaultText),
    ));

    _mostPopular(list);

    list.add(SizedBox(height: 20,));

    list.add(SizedBox(height: 10,));


    return list;
  }

  _mostPopular(List<Widget> list){
    var height = windowWidth*0.5*0.8;

    bool first = true;
    Widget t1;
    for (var item in mostPopular) {
      if (first) {
        t1 = ICard13(
          color: theme.colorBackground,
          text: item.text,
          width: windowWidth * 0.5 - 15,
          height: height,
          image: item.image,
          id: item.id,
          stars: item.star,
          colorStars: theme.colorPrimary,
          textStyle: theme.text16bold,
          callback: _onDishesClick,
        );
        first = false;
      }else{
        var t2 = ICard13(
          color: theme.colorBackground,
          text: item.text,
          width: windowWidth * 0.5 - 15,
          height: height,
          image: item.image,
          id: item.id,
          stars: item.star,
          colorStars: theme.colorPrimary,
          textStyle: theme.text16bold,
          callback: _onDishesClick,
        );
        list.add(Container(
          margin: EdgeInsets.only(left: 5, right: 5),
          child: Row(
            children: <Widget>[
              t1,
              SizedBox(width: 10,),
              t2
            ],
          ),
        ));
        first = true;
      }
    }

    if (!first){
      list.add(Container(
        margin: EdgeInsets.only(left: 5, right: 5),
        child: Row(
          children: <Widget>[
            t1,
            SizedBox(width: 10,),
            Container(width: windowWidth * 0.5 - 15,)
          ],
        ),
      ));
    }
  }

  _addImage(List<Widget> list, double width, double height){
    list.add(UnconstrainedBox(
        child: Container(
          height: height,
          width: width,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("_this.image"),
                      fit: BoxFit.cover
                  ),
                ),
              )),
        )),
    );
    list.add(SizedBox(width: 10,));
  }

  _horizontalImages(){
    var list = List<Widget>();
    var width = windowWidth*0.4;
    var height = windowWidth*0.4*0.7;

    list.add(SizedBox(width: 10,));
    _addImage(list, width, height);
    _addImage(list, width, height);
    _addImage(list, width, height);

    return Container(
      height: height+20,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: list,
      ),
    );
  }

  _imageBuild(){
    return Container(
        child: Hero(
          tag: idHeroes,
          child: Image.asset("assets/top2.jpg",
              fit: BoxFit.cover
          ),
        )
    );
  }

  _phone(){
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Text('Phone: '+shopContact, style: theme.text14)
          ),
          IInkWell(child: IBoxCircle(child: _icon(), color: Colors.white,), onPress: _callMe,)
        ],
      ),
    );
  }

  _icon(){
    String icon = "assets/call.png";
    return Container(
      padding: EdgeInsets.all(5),
        child: UnconstrainedBox(
        child: Container(
            height: 30,
            width: 30,
            child: Image.asset(icon,
              fit: BoxFit.contain, color: Colors.black,
            )
        ))
    );
  }

  _callMe() async {
    var uri = 'tel:'+shopContact;
    if (await canLaunch(uri))
      await launch(uri);
  }

  _workTime(){
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: <Widget>[
          _oneitem(strings.get(70), "10:00AM-11:00PM"), // "Monday",
          _oneitem(strings.get(71), "10:00AM-11:00PM"), // "Tuesday",
          _oneitem(strings.get(72), "10:00AM-11:00PM"), // "Wednesday",
          _oneitem(strings.get(73), "10:00AM-11:00PM"), // "Thursday",
          _oneitem(strings.get(74), "10:00AM-11:00PM"), // "Friday",
          _oneitem(strings.get(75), "10:00AM-11:00PM"), // Saturday
          _oneitem(strings.get(76), "10:00AM-11:00PM"), // Sunday
        ],
      )
    );
  }

  _oneitem(String day, String time){
    return Container(
        margin: EdgeInsets.only(bottom: 5),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(day, style: theme.text14),
          Text(time, style: theme.text14bold)
      ],
    ));
  }

  _horizontalCategories(){
    var list = List<Widget>();
    var height = windowWidth*0.4*0.8;
    for (var item in categories) {
      list.add(ICard12(
        color: theme.colorBackground,
        text: item.text,
        width: windowWidth * 0.4,
        height: height,
        image: item.image,
        id: item.id,
        textStyle: theme.text16bold,
        callback: _onCategoriesClick,
      ));
      list.add(SizedBox(width: 10,));
    }
    return Container(
      height: height+20,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: list,
      ),
    );
  }

  shopFoodList()
  {
    var height = windowWidth*0.5*0.8;

    return FutureBuilder<List<ShopFoodModel>>(
        future:_shopDetailService.getShopFoods(context, shopId),
        builder: (context, snapshot)
        {
          if (snapshot.hasData)
          {
            return RowBuilder(itemCount: snapshot.data.length, itemBuilder: (context, index)
            {
              return ICard13(
                          color: theme.colorBackground,
                          text: snapshot.data[index].shop_food_name,
                          width: windowWidth * 0.5 - 25,
                          height: height,
                          image: "assets/c4.jpg",
                          id: snapshot.data[index].id,
                          stars: 5,
                          colorStars: theme.colorPrimary,
                          textStyle: theme.text16bold,
                          callback: _onDishesClick,
                        );

            }
            );
          }
          else
            {
              return CircularProgressIndicator();

            }

        }
        );

    }

   void getShopDetail(String shopId) async {


    final url = 'http://192.168.1.37:8000/shop/view-single-shop/'+shopId;
    var response = await http.get(Uri.parse(url));
    var body = json.decode(response.body);

    setState(() {
      shopName = body['data'][0]['shop_name'];
      shopContact = body['data'][0]['contact_no'];
      shopStation = body['data'][0]['station_name'];
    });

    // Fluttertoast.showToast(
    //   msg: shopContact,
    //   backgroundColor: Colors.grey,
    // );

  }

}

