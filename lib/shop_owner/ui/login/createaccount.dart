import 'package:flutter/material.dart';
import 'package:fooddelivery/delivery_boy/ui/widgets/iappBar.dart';
import 'package:fooddelivery/delivery_boy/ui/widgets/ibackground4.dart';
import 'package:fooddelivery/delivery_boy/ui/widgets/ibox.dart';
import 'package:fooddelivery/delivery_boy/ui/widgets/ibutton.dart';
import 'package:fooddelivery/delivery_boy/ui/widgets/iinputField2.dart';
import 'package:fooddelivery/delivery_boy/ui/widgets/iinputField2Password.dart';
import 'package:fooddelivery/main.dart';

class ShopCreateAccountScreen extends StatefulWidget {
  @override
  _ShopCreateAccountScreenState createState() => _ShopCreateAccountScreenState();
}

class _ShopCreateAccountScreenState extends State<ShopCreateAccountScreen>
    with SingleTickerProviderStateMixin {

  //////////////////////////////////////////////////////////////////////////////////////////////////////
  //
  //
  //
  _pressCreateAccountButton() async
  {
    // print("User pressed \"CREATE ACCOUNT\" button");
    // print("Login: ${editControllerName.text}, E-mail: ${editControllerEmail.text}, "
    //     "password1: ${editControllerPassword1.text}, password2: ${editControllerPassword2.text}");


    Navigator.pushNamedAndRemoveUntil(context, "/shop_main", (r) => false);
  }

  //
  //////////////////////////////////////////////////////////////////////////////////////////////////////
  var windowWidth;
  var windowHeight;
  final editControllerName = TextEditingController();
  final editControllerEmail = TextEditingController();
  final editControllerPassword1 = TextEditingController();
  final editControllerPassword2 = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    editControllerName.dispose();
    editControllerEmail.dispose();
    editControllerPassword1.dispose();
    editControllerPassword2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    windowWidth = MediaQuery.of(context).size.width;
    windowHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: theme.colorBackground,

      body: Stack(
        children: <Widget>[

          IBackground4(width: windowWidth, colorsGradient: theme.colorsGradient),

          IAppBar(context: context, text: "", color: Colors.white),

          Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  width: windowWidth,
                  child: _body(),
                  )
           ),

        ],
      ),
    );
  }

  _body(){
    return ListView(
      shrinkWrap: true,
      children: <Widget>[

        Container(
          margin: EdgeInsets.only(left: 15, right: 20),
          alignment: Alignment.centerLeft,
          child: Text("Shop Owner - Sign Up",                        // "Create an Account!"
              style: theme.text20boldWhite
          ),
        ),
        SizedBox(height: 20,),

        IBox(
            color: theme.colorBackgroundDialog,
            child: Column(
              children: <Widget>[
                SizedBox(height: 15,),
                Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child:
                    IInputField2(
                      hint: "Shop Name",            // "Login"
                      icon: Icons.account_circle,
                      colorDefaultText: theme.colorPrimary,
                      colorBackground: theme.colorBackgroundDialog,
                      controller: editControllerName,
                    )
                ),
                SizedBox(height: 10,),
                Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child:
                    IInputField2(
                      hint: "Email",            // "E-mail address",
                      icon: Icons.alternate_email,
                      colorDefaultText: theme.colorPrimary,
                      colorBackground: theme.colorBackgroundDialog,
                      controller: editControllerEmail,
                    )
                ),
                SizedBox(height: 10,),
                Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: IInputField2(
                      hint: "Phone",            // "Password"
                      icon: Icons.phone,
                      colorDefaultText: theme.colorPrimary,
                      colorBackground: theme.colorBackgroundDialog,
                      controller: editControllerPassword1,
                    )),
                SizedBox(height: 10,),
                Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: IInputField2(
                      hint: "Station Name",            // "Password"
                      icon: Icons.directions_railway_sharp,
                      colorDefaultText: theme.colorPrimary,
                      colorBackground: theme.colorBackgroundDialog,
                      controller: editControllerPassword1,
                    )),
                SizedBox(height: 10,),
                Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: IInputField2Password(
                      hint: "Password",            // "Confirm Password"
                      icon: Icons.vpn_key,
                      colorDefaultText: theme.colorPrimary,
                      colorBackground: theme.colorBackgroundDialog,
                      controller: editControllerPassword2,
                    )),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: IButton(pressButton: _pressCreateAccountButton, text: "CREATE ACCOUNT", // CREATE ACCOUNT
                    color: theme.colorPrimary,
                    textStyle: theme.text16boldWhite,),
                ),
                SizedBox(height: 15,),
              ],
            )
        ),

      ],
    );
  }

}