import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<Map<String, dynamic>>> fetchData() async {
    final url =
        'https://datausa.io/api/data?drilldowns=Nation&measures=Population';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body);
      print(parsed);
      return List<Map<String, dynamic>>.from(parsed['data']);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
