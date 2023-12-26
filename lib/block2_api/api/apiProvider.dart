import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

class ApiProvider {
  final url =
      "https://datausa.io/api/data?drilldowns=Nation&measures=Population";

  Future<PopulationData> fetchpopList() async {
    try {
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        print(result);
        return PopulationData.fromJson(result);
      } else {
        print("else");
      }
    } catch (error) {
      print("Error;- $error");
    }
    throw Exception("out of try");
  }
}
