import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../main.dart';

class RequestRepository {
  Future<dynamic> getAllRequest(String username) async {
    var response = await http.get(
      'https://ssrapiv3.azurewebsites.net/api/v1/ServiceRequests/Users?username=$username',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) return response.body;
  }


}
