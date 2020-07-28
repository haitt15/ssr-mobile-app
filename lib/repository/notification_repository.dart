
import 'package:http/http.dart' as http;

class NotificationRepository {
  Future<dynamic> getAllNotification(String username) async {
    var response = await http.get(
      'https://ssrapiv3.azurewebsites.net/api/v1/Notifications/$username',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) return response.body;
  }

}