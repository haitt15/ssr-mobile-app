import 'dart:async';
import 'package:http/http.dart' as http;


class RequestHistoryRepository {
  Future<dynamic> getRequestHistory(String ticketId) async {
    var response = await http.get(
      'https://ssrapiv3.azurewebsites.net/api/v1/RequestHistories/$ticketId',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) return response.body;
  }


}
