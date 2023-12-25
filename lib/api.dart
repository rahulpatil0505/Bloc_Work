import 'package:http/http.dart' as http;

import 'dart:convert';
import 'model.dart';

class UserData {
  String url = "https://reqres.in/api/users?page=2";

  Future<List<Data>> getusers() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      // var op = jsonDecode(response.body);
      final List result = jsonDecode(response.body)['data'];
      print(result);
      return result.map((e) => Data.fromJson(e)).toList();
    } else {
      throw Exception();
    }
  }
}


/// page 1 get api response and create model 
/// after creating model create on api call function 
///  then create state file 
