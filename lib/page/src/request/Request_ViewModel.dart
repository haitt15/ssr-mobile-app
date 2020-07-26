import 'dart:convert';

import 'package:scoped_model/scoped_model.dart';
import 'package:ssrapp/page/src/request/Request_Model.dart';
import 'package:ssrapp/repository/service_repository.dart';

class RequestViewModel extends Model{
  ServiceRepository serviceRepository = ServiceRepository();
  List<dynamic> listItem;

  List<RequestModel> requestList;
  RequestViewModel(){
    getAllRequest();
  }

  void getAllRequest() async {
    var reponse = await serviceRepository.getAllService();
    if (reponse != null) {
      reponse = jsonDecode(reponse);
      listItem = reponse['data'];
      requestList = listItem.map((e) => RequestModel.fromJson(e)).toList();
    }
    notifyListeners();
  }
}