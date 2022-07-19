import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/main.dart';
import 'package:fooddelivery/model/categories.dart';
import 'package:fooddelivery/model/mostpopular.dart';
import 'package:fooddelivery/model/pantryfood.dart';
import 'package:fooddelivery/model/review.dart';
import 'package:fooddelivery/model/shop.dart';
import 'package:fooddelivery/model/topRestourants.dart';
import 'package:fooddelivery/model/trending.dart';
import 'package:fooddelivery/service/pantryfoodService.dart';
import 'package:fooddelivery/service/shopService.dart';
import 'package:fooddelivery/widget/icard1.dart';
import 'package:fooddelivery/widget/icard10.dart';
import 'package:fooddelivery/widget/icard11.dart';
import 'package:fooddelivery/widget/icard12.dart';
import 'package:fooddelivery/widget/icard13.dart';
import 'package:fooddelivery/widget/isearch.dart';
import 'package:fooddelivery/widget/ilist1.dart';
import 'package:fooddelivery/widget/ipromotion.dart';
import 'package:fooddelivery/model/promotion.dart';
import 'package:fooddelivery/widget/row_builder.dart';

class HomeScreen extends StatefulWidget {
  final Function(String) callback;
  final Color color;
  HomeScreen({this.color = Colors.black, this.callback});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

String idDishes;
String idRestaurant;
String idRestaurantOnMap;
String idCategory;
String idHeroes;
String idOrder;

class _HomeScreenState extends State<HomeScreen> {

  ShopService _shopservice = new ShopService();
  PantryFoodService _pantryService = new PantryFoodService();

  _pressPromotion(int id){
    print("User press promotion with id: $id");
  }

  _onPressSearch(String value){
    print("Search word: $value");
  }

  _onTopRestaurantClick(String id, String heroId){
    print("User pressed Top Restaurant with id: $id");
    idHeroes = heroId;
    idRestaurant = id;
    route.setDuration(1);
    route.push(context, "/restaurantdetails");
  }

  _onTopRestaurantNavigateIconClick(String id){
    print("User pressed Top Restaurant Route icon with id: $id");
    idRestaurantOnMap = id;
    route.mainScreen.route("map");
  }

  _onCategoriesClick(String id, String heroId){
    print("User pressed Category item with id: $id");
    idHeroes = heroId;
    idCategory = id;
    route.setDuration(1);
    route.push(context, "/categorydetails");
  }

  _onTrendingClick(String id, String heroId){
    print("User pressed Trending item with id: $id");
    idDishes = id;
    idHeroes = heroId;
    route.setDuration(1);
    route.push(context, "/dishesdetails");
  }

  _onMostPopularClick(String id, String heroId){
    print("User pressed Most Popular item with id: $id");
    idHeroes = heroId;
    idDishes = id;
    route.setDuration(1);
    route.push(context, "/dishesdetails");
  }

  //
  //////////////////////////////////////////////////////////////////////////////////////////////////////
  var windowWidth;
  var windowHeight;

  @override
  Widget build(BuildContext context) {
    windowWidth = MediaQuery.of(context).size.width;
    windowHeight = MediaQuery.of(context).size.height;
    var height = windowWidth*0.5*0.8;

    return Column(children: <Widget>[
      Expanded(child:
    Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top+50),
    child: ListView(
    padding: EdgeInsets.only(top: 0),
    shrinkWrap: true,
    children: <Widget>[

    Container(
    margin: EdgeInsets.only(left: 15, right: 15, top: 10),
    child: ISearch(
    hint: strings.get(34), // "Search",
    icon: Icons.search,
    onChangeText: _onPressSearch,
    colorDefaultText: theme.colorDefaultText,
    colorBackground: theme.colorBackground,
    ),
    ),
    IPromotion(dataPromotion, height: windowWidth*0.5, width: windowWidth*0.9, colorActivy: theme.colorPrimary,
    style: theme.text22primaryShadow, buttonText: strings.get(97), buttonTextStyle: theme.text14boldWhite, pressButton: _pressPromotion, // Explore
    seconds: 4,),
    Container(
    margin: EdgeInsets.only(left: 20),
    child: IList1(imageAsset: "assets/top.png", text: "Station Shops",    // "Top Restaurants",
    textStyle: theme.text16bold, imageColor: theme.colorDefaultText),
    ),
    Container(height: height+20,
    child: ListView(
      scrollDirection: Axis.horizontal,
        children: [ shopList(), ]
    ),
    ),



    // Container(
    // height: height+30,
    // child: FutureBuilder<List<ShopModel>>(
    // future:_shopservice.getShops(),
    // builder: (context, snapshot)
    // {
    // if(snapshot.hasData)
    // {
    //   return ColumnBuilder(
    //       itemCount: snapshot.data.length,
    //       itemBuilder: (context, index)
    //       {
    //         return ListView(
    //           scrollDirection: Axis.horizontal,
    //           children: <Widget>[
    //             ICard10(
    //               color: theme.colorBackground,
    //               text: "Item",
    //               text2: "item.text2",
    //               width: windowWidth * 0.6,
    //               height: height,
    //               image: "assets/top1.jpg",
    //               stars: 4,
    //               colorStars: theme.colorPrimary,
    //               id: "1",
    //               starsCount: 3,
    //               title: theme.text18boldPrimary,
    //               body: theme.text16,
    //               callback: _onTopRestaurantClick,
    //             ),
    //           ],
    //         );
    //       }
    //       );
    // }
    // else
    // {
    //   return CircularProgressIndicator();
    // }
    // }
    //
    // ),
    //
    //
    //
    // ),
    SizedBox(height: 20),
    Container(
    margin: EdgeInsets.only(left: 20),
    child: IList1(imageAsset: "assets/trending.png", text: strings.get(40),     // "Trending this week",
    textStyle: theme.text16bold, imageColor: theme.colorDefaultText),
    ),

    Container(
    height: height+30,
    child: ListView(
    scrollDirection: Axis.horizontal,
    children: <Widget>[
      pantryFoodList()

    /*ICard11(
    color: theme.colorBackground,
    text: "item.text",
    text2: "item.restaurant",
    textInLabel: "\₹25",
    width: windowWidth * 0.4,
    height: height,
    image: "assets/b1.jpg",
    colorLabel: theme.colorCompanion4,
    id: "2",
    title: theme.text16bold,
    body: theme.text14,
    callback: _onTrendingClick,
    ),*/

    ],
    ),
    ),
    SizedBox(height: 20),
    Container(
    margin: EdgeInsets.only(left: 20),
    child: IList1(imageAsset: "assets/categories.png", text: strings.get(41),   // "Food categories",
    textStyle: theme.text16bold, imageColor: theme.colorDefaultText),
    ),
    Container(
    height: height+20,
    child: ListView(
    scrollDirection: Axis.horizontal,
    children: <Widget>[

    ICard11(
    color: theme.colorBackground,
    text: "Pasta",
    text2: "25544",
    textInLabel: "\$20",
    width: windowWidth * 0.4,
    height: height,
    image: "assets/c1.jpg",
    colorLabel: theme.colorCompanion4,
    id: "2",
    title: theme.text16bold,
    body: theme.text14,
    callback: _onTrendingClick,
    )


    ],
    ),
    ),
      SizedBox(height: 80,),
      Container(
        margin: EdgeInsets.only(left: 20),
        child: IList1(imageAsset: "assets/popular.png", text: "Train Foods",        // "Most Popular",
            textStyle: theme.text16bold, imageColor: theme.colorDefaultText),
      )


    ],
    //children: _children()
    )
    ))
    ],);
  }

  _children(){
    var list = List<Widget>();

    list.add(Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 10),
      child: ISearch(
        hint: strings.get(34), // "Search",
        icon: Icons.search,
        onChangeText: _onPressSearch,
        colorDefaultText: theme.colorDefaultText,
        colorBackground: theme.colorBackground,
      ),
    ));

    list.add(SizedBox(height: 15,));

    list.add(IPromotion(dataPromotion, height: windowWidth*0.5, width: windowWidth*0.9, colorActivy: theme.colorPrimary,
      style: theme.text22primaryShadow, buttonText: strings.get(97), buttonTextStyle: theme.text14boldWhite, pressButton: _pressPromotion, // Explore
      seconds: 4,));

    list.add(SizedBox(height: 20,));

    list.add(Container(
      margin: EdgeInsets.only(left: 20),
      child: IList1(imageAsset: "assets/top.png", text: "Station Shops",    // "Top Restaurants",
        textStyle: theme.text16bold, imageColor: theme.colorDefaultText),
    ));

    list.add(SizedBox(height: 10,));

    list.add(_horizontalTopRestaurants());

    list.add(SizedBox(height: 20,));

    list.add(Container(
      margin: EdgeInsets.only(left: 20),
      child: IList1(imageAsset: "assets/trending.png", text: strings.get(40),     // "Trending this week",
        textStyle: theme.text16bold, imageColor: theme.colorDefaultText),
    ));

    list.add(SizedBox(height: 10,));

    list.add(_horizontalTrending());

    list.add(SizedBox(height: 20,));

    list.add(Container(
      margin: EdgeInsets.only(left: 20),
      child: IList1(imageAsset: "assets/categories.png", text: strings.get(41),   // "Food categories",
        textStyle: theme.text16bold, imageColor: theme.colorDefaultText),
    ));

    list.add(SizedBox(height: 10,));

    list.add(_horizontalCategories());

    list.add(SizedBox(height: 20,));

    list.add(Container(
      margin: EdgeInsets.only(left: 20),
      child: IList1(imageAsset: "assets/popular.png", text: strings.get(42),        // "Most Popular",
        textStyle: theme.text16bold, imageColor: theme.colorDefaultText),
    ));

    list.add(SizedBox(height: 10,));

    _mostPopular(list);

    list.add(SizedBox(height: 100,));

    return list;
  }

  _reviews(List<Widget> list){
    for (var item in reviews)
      list.add(Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: ICard1(
          color: theme.colorPrimary,
          title: item.name, text: item.text, date: item.date,
          titleStyle: theme.text18bold, textStyle: theme.text16, dateStyle: theme.text14grey,
          userAvatar: item.image, rating: item.star,
        ),
      ));
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
          callback: _onMostPopularClick,
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
          callback: _onMostPopularClick,
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

  _horizontalTrending(){
    var list = List<Widget>();
    var height = windowWidth*0.4*0.8;
    for (var item in trending) {
      list.add(ICard11(
        color: theme.colorBackground,
        text: item.text,
        text2: item.restaurant,
        textInLabel: "${item.currency}${item.price}",
        width: windowWidth * 0.4,
        height: height,
        image: item.image,
        colorLabel: theme.colorCompanion4,
        id: item.id,
        title: theme.text16bold,
        body: theme.text14,
        callback: _onTrendingClick,
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

  _horizontalTopRestaurants() {


      var list = List<Widget>();
      var height = windowWidth*0.6*0.7;
      for (var item in topRestourant)
      {
        list.add(ICard10(
          color: theme.colorBackground,
          text: item.text,
          text2: item.text2,
          width: windowWidth * 0.6,
          height: height,
          image: item.image,
          stars: item.stars,
          colorStars: theme.colorPrimary,
          id: item.id,
          starsCount: item.starsCount,
          title: theme.text18boldPrimary,
          body: theme.text16,
          callback: _onTopRestaurantClick,

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

  shopList()
  {
    var height = windowWidth*0.6*0.7;
    
    return FutureBuilder<List<ShopModel>>(
        future:_shopservice.getShops(context),
        builder: (context, snapshot)
        {
          if(snapshot.hasData)
          {
            return RowBuilder(itemCount: snapshot.data.length, itemBuilder: (context, index)
            {
              return ICard10(
                                color: theme.colorBackground,
                                text: snapshot.data[index].shop_name,
                                text2: snapshot.data[index].station_name,
                                width: windowWidth * 0.6,
                                height: windowWidth*0.6*0.7,
                                image: "assets/top1.jpg",                                
                                id: snapshot.data[index].id,                                
                                title: theme.text18boldPrimary,
                                body: theme.text16,
                                callback: _onTopRestaurantClick,
                              );

            });

          }
          else
          {
            return CircularProgressIndicator();
          }
        }
        );
  }

  pantryFoodList()
  {
    var height = windowWidth*0.5*0.8;

    return FutureBuilder<List<PantryFoodModel>>(
    future:_pantryService.getFoods(context),
    builder: (context, snapshot) {
      if (snapshot.hasData)
      {
        return RowBuilder(itemCount: snapshot.data.length, itemBuilder: (context, index)
        {
         return ICard11(
            color: theme.colorBackground,
            text: snapshot.data[index].pantry_food_name,
            text2: "item.restaurant",
            textInLabel: "\₹ "+snapshot.data[index].price,
            width: windowWidth * 0.4,
            height: height,
            image: snapshot.data[index].image,
            colorLabel: theme.colorCompanion4,
            id: snapshot.data[index].id,
            title: theme.text16bold,
            body: theme.text14,
            callback: _onTrendingClick,
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

}