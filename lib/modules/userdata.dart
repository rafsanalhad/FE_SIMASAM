import 'dart:convert';
import 'package:http/http.dart' as http;

class UserData {
  String id = '';
  String name = '';

  UserData({required this.id, required this.name});

  static Future<UserData> connectToApi(String id) async {
    String apiURL = 'http://10.0.2.2:8000/api/user/3';
    return await http.get(Uri.parse(apiURL)).then((response) {
      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body);
        return UserData(
            id: jsonData['result']['id'].toString(),
            name: jsonData['result']['name']);
      } else {
        throw Exception('Failed to connect to API');
      }
    });
  }
}
