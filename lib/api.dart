import 'dart:convert';
import 'package:http/http.dart' as http;


class Api{
  var base_url = "http://192.168.1.56:5000";
  final String _url = "http://192.168.1.56:5000";
  //if you are using android studio emulator, change localhost to 10.0.2.2
  var token;

  authData(data, apiUrl) async {
    var fullUrl = _url + apiUrl;
    return await http.post(
        Uri.parse(fullUrl),
        body: data,
    );
  }

  getData(apiUrl) async {
    var fullUrl = _url + apiUrl;
    // await _getToken();
    return await http.post(
        Uri.parse(fullUrl),
        // headers: _setHeaders()
    );
  }

}