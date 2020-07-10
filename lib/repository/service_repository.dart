import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../main.dart';

class ServiceRepository {
  Future<dynamic> getAllService() async {
    var response = await http.get(
      'https://ssrapiv3.azurewebsites.net/api/v1/Services',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) return response.body;
  }

  Future<dynamic> registerService(
      String userName, String serviceId, String content) async {
    var response = await http.post(
      'https://ssrapiv3.azurewebsites.net/api/v1/ServiceRequests',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(<String, String>{
        'username': userName,
        'serviceId': serviceId,
        'status': "Waiting",
        'content': content,
      }),
    );
    if (response.statusCode == 201) {
      print("request success..");
      return response.body;
    }
    return null;
  }
}
