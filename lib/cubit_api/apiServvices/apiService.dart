import 'dart:convert';

import '../models/Userdetails.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static Future<UserDetails?> Getapi() async {
    var response = await http.get(Uri.parse("https://dummyjson.com/users"));

    if (response.statusCode == 200) {
      print(response.body);
      UserDetails userDetails = UserDetails.fromJson(jsonDecode(response.body));

      return userDetails;
    }
    return null;
  }
}
