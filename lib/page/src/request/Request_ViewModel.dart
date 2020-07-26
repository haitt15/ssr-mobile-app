import 'dart:convert';

import 'package:scoped_model/scoped_model.dart';
import 'package:ssrapp/repository/request_repository.dart';

import '../../../main.dart';
import '../request_detail/RequestDetail_Model.dart';

class RequestViewModel extends Model {
  RequestRepository requestRepository = RequestRepository();
  List<dynamic> listItem;
  List<RequestDetailModel> requestList;

  RequestViewModel() {
    getAllRequest();
  }

  void getAllRequest() async {
    String username = "";
    dynamic user = await storage.read(key: "UserInfo");
    if (user == null)
      return null;
    else {
      user = jsonDecode(user);
      username = user['username'];
    }
    var reponse = await requestRepository.getAllRequest(username);
    if (reponse != null) {
      reponse = jsonDecode(reponse);
      listItem = reponse['data'];
      requestList =
          listItem.map((e) => RequestDetailModel.fromJson(e)).toList();
//      storage.write(key: "serviceId", value: );
    }
    notifyListeners();
  }
}
