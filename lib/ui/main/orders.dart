import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/main.dart';
import 'package:fooddelivery/model/myorders.dart';
import 'package:fooddelivery/model/orders.dart';
import 'package:fooddelivery/service/myorderService.dart';
import 'package:fooddelivery/ui/main/home.dart';
import 'package:fooddelivery/widget/column_builder.dart';
import 'package:fooddelivery/widget/icard14.dart';
import 'package:fooddelivery/widget/ilist1.dart';
import 'package:fooddelivery/widget/isearch.dart';

class OrdersScreen extends StatefulWidget {
  final Function(String) callback;
  OrdersScreen({this.callback});

  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {


  MyOrderService _myorderservice = new MyOrderService();
  //////////////////////////////////////////////////////////////////////////////////////////////////////
  //
  //
  //
  _onPressSearch(String value){
    print("User search word: $value");
  }

  _onItemClick(String id, String heroId){
    print("User pressed item with id: $id");
    idOrder = id;
    idHeroes = heroId;
    route.setDuration(1);
    route.push(context, "/orderdetails");
  }

  //
  //////////////////////////////////////////////////////////////////////////////////////////////////////
  var windowWidth;
  var windowHeight;

  @override
  Widget build(BuildContext context) {
    windowWidth = MediaQuery.of(context).size.width;
    windowHeight = MediaQuery.of(context).size.height;
    var height = windowWidth*0.3;
    return Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top+50),
        child: ListView(
          padding: EdgeInsets.only(top: 0, left: 15, right: 15),
          shrinkWrap: true,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10),
              child: ISearch(
                hint: strings.get(34), // "Search",
                icon: Icons.search,
                onChangeText: _onPressSearch,
                colorDefaultText: theme.colorDefaultText,
                colorBackground: theme.colorBackground,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              //margin: EdgeInsets.only(left: 10, right: 10),
                child: IList1(imageAsset: "assets/orders.png",
                  text: strings.get(36),                      // "My Orders",
                  textStyle: theme.text16bold,
                  imageColor: theme.colorDefaultText,
                )
            ),
            Container(
              child:ListView(children: <Widget> [
                myOrders()

              ],)
              //margin: EdgeInsets.only(right: 10),
              //   child: ICard14(
              //     color: theme.colorBackgroundDialog,
              //     text: "item.name",
              //     textStyle: theme.text16bold,
              //     text2: "item.restaurant",
              //     textStyle2: theme.text14,
              //     text3: "item.date",
              //     textStyle3: theme.text14,
              //     text4: "300",
              //     textStyle4: theme.text18boldPrimary,
              //     width: windowWidth,
              //     height: height,
              //     image: "assets/b2.jpg",
              //     id: "1",
              //     callback: _onItemClick,
              //   )
    )




          ]
        )
    );
  }

  _children(){
    var list = List<Widget>();

    list.add(Container(
      margin: EdgeInsets.only(top: 10),
      child: ISearch(
        hint: strings.get(34), // "Search",
        icon: Icons.search,
        onChangeText: _onPressSearch,
        colorDefaultText: theme.colorDefaultText,
        colorBackground: theme.colorBackground,
      ),
    ));

    list.add(SizedBox(height: 20,));

    list.add(Container(
      //margin: EdgeInsets.only(left: 10, right: 10),
      child: IList1(imageAsset: "assets/orders.png",
        text: strings.get(36),                      // "My Orders",
        textStyle: theme.text16bold,
        imageColor: theme.colorDefaultText,
      )
    ));

    list.add(SizedBox(height: 10,));

    _list(list);

    list.add(SizedBox(height: 200,));

    return list;
  }

  _list(List<Widget> list){
    var height = windowWidth*0.3;
    for (var item in orders) {
      list.add(Container(
        //margin: EdgeInsets.only(right: 10),
          child: ICard14(
            color: theme.colorBackgroundDialog,
          text: item.name,
          textStyle: theme.text16bold,
          text2: item.restaurant,
          textStyle2: theme.text14,
          text3: item.date,
          textStyle3: theme.text14,
          text4: item.total,
          textStyle4: theme.text18boldPrimary,
          width: windowWidth,
          height: height,
          image: item.image,
          id: item.id,
          callback: _onItemClick,
        )));
    }
  }

  myOrders()
  {
    var height = windowWidth*0.3;

    return FutureBuilder<List<MyOders>>(
        future:_myorderservice.getOrders(),
    builder: (context, snapshot)
    {
      if(snapshot.hasData)
      {
        return ColumnBuilder(itemCount: snapshot.data.length, itemBuilder: (context, index)
        {
          return ICard14(
                  color: theme.colorBackgroundDialog,
                  text: "item.name",
                  textStyle: theme.text16bold,
                  text2: "item.restaurant",
                  textStyle2: theme.text14,
                  text3: "item.date",
                  textStyle3: theme.text14,
                  text4: "300",
                  textStyle4: theme.text18boldPrimary,
                  width: windowWidth,
                  height: height,
                  image: "assets/b2.jpg",
                  id: "1",
                  callback: _onItemClick,
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

  }