import 'package:flutter/material.dart';
import 'package:fooddelivery/route.dart';
import 'package:fooddelivery/config/theme.dart';
import 'package:fooddelivery/shop_owner/config/lang_shop.dart';
import 'package:fooddelivery/shop_owner/model/account.dart';
import 'package:fooddelivery/shop_owner/ui/login/createaccount.dart';
import 'package:fooddelivery/shop_owner/ui/main/mainscreen.dart';
import 'package:fooddelivery/ui/login/forgot.dart';
import 'package:fooddelivery/ui/login/login.dart';
import 'package:fooddelivery/ui/start/splash.dart';

import 'config/lang.dart';
import 'shop_owner/config/lang_shop.dart';
import 'delivery_boy/model/account.dart';
import 'delivery_boy/model/pref.dart';

//
// Theme
//
AppThemeData theme = AppThemeData();
//
// Language data
//
Lang strings = Lang();
LangShop shop_strings = LangShop();
//
// Routes
//
AppFoodRoute route = AppFoodRoute();
//
// Account
//
Account account = Account();
AccountShop accountShop = AccountShop();
Pref pref = Pref();


void main() {
  theme.init();
  strings.setLang(Lang.english);  // set default language - English
  runApp(AppFoodDelivery());
}

class AppFoodDelivery  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var _theme = ThemeData(
      fontFamily: 'Raleway',
      primarySwatch: theme.primarySwatch,
    );


    if (theme.darkMode){
      _theme = ThemeData(
        fontFamily: 'Raleway',
        brightness: Brightness.dark,
        unselectedWidgetColor:Colors.white,
        primarySwatch: theme.primarySwatch,
      );
      return Container(width: 0,height: 0);
    }

    return MaterialApp(
      title: strings.get(10),  // "Food Delivery Flutter App UI Kit",
      debugShowCheckedModeBanner: false,
      theme: _theme,
      initialRoute: '/splash',
      //initialRoute: '/login',
      routes: {
        '/splash': (BuildContext context) => SplashScreen(),
        '/login': (BuildContext context) => LoginScreen(),
        '/forgot': (BuildContext context) => ForgotScreen(),
        '/shop_main': (BuildContext context) => ShopMainScreen(),
        '/shop_create' : (BuildContext context) => ShopCreateAccountScreen(),
      },
    );

  }
}

