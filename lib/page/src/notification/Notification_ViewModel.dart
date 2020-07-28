import 'dart:convert';

import 'package:scoped_model/scoped_model.dart';
import 'package:ssrapp/repository/notification_repository.dart';

import '../../../main.dart';
import 'Notification_Model.dart';
import 'Notification_View.dart';

class NotificationViewModel extends Model {
  NotificationRepository notificationRepository = NotificationRepository();
  List<dynamic> listItem;
  List<NotificationModel> notificationList;

  NotificationViewModel() {
    getAllNotification();
  }

  void getAllNotification() async {
    String username = "";
    dynamic user = await storage.read(key: "UserInfo");
    if (user == null)
      return null;
    else {
      user = jsonDecode(user);
      username = user['username'];
    }
    var reponse = await notificationRepository.getAllNotification(username);
    if (reponse != null) {
      listItem = jsonDecode(reponse) as List;
      notificationList =
          listItem.map((e) => NotificationModel.fromJson(e)).toList();
//      storage.write(key: "serviceId", value: );
    }
    notifyListeners();
  }
}