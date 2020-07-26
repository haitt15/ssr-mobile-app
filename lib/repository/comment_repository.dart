import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../main.dart';

class CommentRepository {
  Future<dynamic> getAllComment(String ticketId) async {
    var response = await http.get(
      'https://ssrapiv3.azurewebsites.net/api/v1/Comments?ticketId=${ticketId}',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) return response.body;
  }

  Future<dynamic> addComment(
      String username, String ticketId, String content) async {
    var response = await http.post(
      'https://ssrapiv3.azurewebsites.net/api/v1/Comments',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(<String, String>{
        'username': username,
        'content': content,
        'ticketId': ticketId
      }),
    );
    if (response.statusCode == 201) {
      print("request success..");
      return response.body;
    }
    return null;
  }
}
