import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fooddelivery/main.dart';
import 'package:fooddelivery/widget/iappBar.dart';
import 'package:fooddelivery/widget/ibackground3.dart';
import 'package:fooddelivery/widget/ibox.dart';
import 'package:fooddelivery/widget/ibutton.dart';
import 'package:fooddelivery/widget/iinputField2.dart';
import 'package:fooddelivery/widget/iinputField2Password.dart';

import '../../api.dart';

class CreateAccountScreen extends StatefulWidget {
  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen>

    with SingleTickerProviderStateMixin {

    bool _isLoading = false;

  _pressCreateAccountButton()
  {
    // print("User pressed \"CREATE ACCOUNT\" button");
    // print("Login: ${editControllerName.text}, E-mail: ${editControllerEmail.text}, "
    //     "password1: ${editControllerPassword1.text}, mobile: ${editControllerContact.text}");

    registerUser();

    // route.push(context, "/login");
  }

  //
  //////////////////////////////////////////////////////////////////////////////////////////////////////
  var windowWidth;
  var windowHeight;
  final editControllerName = TextEditingController();
  final editControllerEmail = TextEditingController();
  final editControllerPassword1 = TextEditingController();
  final editControllerContact = TextEditingController();
  final editControllerCompartment = TextEditingController();
  final editControllerSeatNo = TextEditingController();
  final editControllerTrainNo = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    route.disposeLast();
    editControllerName.dispose();
    editControllerEmail.dispose();
    editControllerPassword1.dispose();
    editControllerContact.dispose();
    editControllerCompartment.dispose();
    editControllerSeatNo.dispose();
    editControllerTrainNo.dispose();
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
          child: Text("User - " + strings.get(24),                        // "Create an Account!"
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
                      hint: "Name",            // "Login"
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
                      hint: strings.get(21),            // "E-mail address",
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
                      hint: "Mobile number",            // "Confirm Password"
                      icon: Icons.phone,
                      colorDefaultText: theme.colorPrimary,
                      colorBackground: theme.colorBackgroundDialog,
                      controller: editControllerContact,
                    )),
                SizedBox(height: 10,),
                Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child:
                    IInputField2(
                      hint: "Train No",            // "Login"
                      icon: Icons.train,
                      colorDefaultText: theme.colorPrimary,
                      colorBackground: theme.colorBackgroundDialog,
                      controller: editControllerTrainNo,
                    )
                ),
                SizedBox(height: 10,),
                Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child:
                    IInputField2(
                      hint: "Compartment",            // "Login"
                      icon: Icons.account_circle,
                      colorDefaultText: theme.colorPrimary,
                      colorBackground: theme.colorBackgroundDialog,
                      controller: editControllerCompartment,
                    )
                ),
                SizedBox(height: 10,),
                Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child:
                    IInputField2(
                      hint: "Seat No",            // "Login"
                      icon: Icons.account_circle,
                      colorDefaultText: theme.colorPrimary,
                      colorBackground: theme.colorBackgroundDialog,
                      controller: editControllerSeatNo,
                    )
                ),
                SizedBox(height: 10,),
                Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: IInputField2Password(
                      hint: strings.get(16),            // "Password"
                      icon: Icons.vpn_key,
                      colorDefaultText: theme.colorPrimary,
                      colorBackground: theme.colorBackgroundDialog,
                      controller: editControllerPassword1,
                    )),
                SizedBox(height: 20,),

                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: IButton(pressButton: _pressCreateAccountButton, text: strings.get(26), // CREATE ACCOUNT
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

  void registerUser() async
  {

    setState(() {
      _isLoading = true;
    });

    var data = {
      "username": editControllerEmail.text,
      "password": editControllerPassword1.text,
      "contact_no": editControllerContact.text,
      "name": editControllerName.text,
      "email_id": editControllerEmail.text,
      "train_id": "62a174fa337ffafa10c59b01",
      "compartment": editControllerCompartment.text,
      "seat_no": editControllerSeatNo.text
    };

    var res = await Api().authData(data, '/user/user-register');
    var body = json.decode(res.body);

    if(body['success']==true)
    {
      Fluttertoast.showToast(
        msg: body['message'].toString(),
        backgroundColor: Colors.grey,
      );

      route.push(context, "/login");
    }
    else
    {
      Fluttertoast.showToast(
        msg: body['message'].toString(),
        backgroundColor: Colors.grey,
      );

    }

  }

}