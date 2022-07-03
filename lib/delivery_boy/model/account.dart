
import 'package:fooddelivery/delivery_boy/model/pref.dart';

class Account{

  Pref pref = Pref();

  String userName = "Alisa Smith";
  String email = "alisa@gmail.com";
  String phone = "+33160372484";
  String userAvatar = "https://www.valeraletun.ru/codecanyon/fooddel2/user2.jpg";
  String token = "";

  int notifyCount = 6;
  String currentOrder = "";
  String openOrderOnMap = "";
  String backRoute = "";

  bool _initUser = true;

  okUserEnter(String name, String password, String avatar, String _email, String _token){
    _initUser = true;
    userName = name;
    userAvatar = avatar;
    email = _email;
    token = _token;
    pref.set(Pref.userEmail, _email);
    pref.set(Pref.userPassword, password);
    pref.set(Pref.userAvatar, avatar);
    print("User Auth! Save email=$email pass=$password");
  }

  logOut(){
//    _initUser = false;
//    pref.clearUser();
//    userName = "";
//    userAvatar = "";
//    email = "";
//    token = "";
  }

  isAuth(){
    return _initUser;
  }

  Function _redrawMainWindow;

  setRedraw(Function callback){
    _redrawMainWindow = callback;
  }

  redraw(){
    if (_redrawMainWindow != null)
      _redrawMainWindow();
  }

}
