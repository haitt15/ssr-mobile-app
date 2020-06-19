import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ServiceRepository {
  Future<dynamic> getAllService() async {
    var response = await http.get(
      'https://ssrapiv2.azurewebsites.net/api/v1/Services',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200)
      return response.body;
  }
}
