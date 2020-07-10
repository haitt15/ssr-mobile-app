import 'dart:convert';

import 'package:scoped_model/scoped_model.dart';
import 'package:ssrapp/page/src/request_detail/RequestDetail_Model.dart';
import 'package:ssrapp/page/src/service/Service_Model.dart';
import 'package:ssrapp/repository/service_repository.dart';

import '../../../main.dart';

class ServiceDetail extends Model {
  RequestDetailModel requestDetailModel;
  Future<bool> register(String serviceId, String content) async {
    String username = "";
    dynamic user = await storage.read(key: "UserInfo");
    if (user == null)
      return null;
    else {
      user = jsonDecode(user);
      username = user['username'];
    }
    var response = await ServiceRepository().registerService(username, serviceId, content);
    if(response != null){
      var json = jsonDecode(response);
      requestDetailModel = RequestDetailModel.fromJson(json);
      notifyListeners();
    }
    return true;
  }
}
