import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

class NetworkAPI{
  // Singleton Instance
  static NetworkAPI _instance = new NetworkAPI.internal();
  NetworkAPI.internal();
  factory NetworkAPI() => _instance;

  // JsonDecoder object
  final JsonDecoder _decoder = new JsonDecoder();
  /// Get Method -> Future<dynamic>
  /// @param -> @required url -> String
  /// @usage -> Make HTTP-GET request to specified URL and returns the response in JSON format
  Future<dynamic> get({@required String url}) =>
      http.get(url) // Make HTTP-GET request
          .then((http.Response response) { // On response received
        // Get response status code
        final int statusCode = response.statusCode;

        // Check response status code for error condition
        if (statusCode < 200 || statusCode > 400 || json == null) { // Error occurred
          throw new Exception("Error while fetching data");
        }else{ // No error occurred
          // Get response body
          final String res = response.body;
          // Convert response body to JSON object
          return _decoder.convert(res);
        }

      });

  /// Post Method -> Future<dynamic>
  /// @param -> @required url -> String
  ///        -> headers -> Map
  ///        -> body -> dynamic
  ///        -> encoding -> dynamic
  ///  @usage -> Make HTTP-POST request to specified URL and returns the response in JSON format
  Future<dynamic> post({@required String url,Map headers, body, encoding}) =>
      http.post(url, body: body, headers: headers, encoding: encoding) // Make HTTP-POST request
          .then((http.Response response) { // On response received
        // Get response status code
        final int statusCode = response.statusCode;
        // Check response status code for error condition
        if (statusCode < 200 || statusCode > 400 || json == null) { // Error occurred
          throw new Exception("Error while fetching data");
        }else{ // No error occurred
          // Get response body
          final String res = response.body;
          // Convert response body to JSON object
          return _decoder.convert(res);
        }

      });
}
