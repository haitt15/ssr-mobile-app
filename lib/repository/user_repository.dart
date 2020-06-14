import 'dart:async';
import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

import '../main.dart';

class UserRepository {
  static Future<String> callAPILoginGoogle(
      String idToken, String fcmToken) async {
    var response = await http.post(
      'https://ssrapi.azurewebsites.net/api/v1/Auth/Google',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json
          .encode(<String, String>{'IdToken': idToken, 'FcmToken': fcmToken}),
    );

    if (response.statusCode == 200)
    return response.body;
  }
}
