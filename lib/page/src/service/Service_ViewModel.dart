import 'dart:convert';

import 'package:scoped_model/scoped_model.dart';
import 'package:ssrapp/main.dart';
import 'package:ssrapp/page/src/service/Service_Model.dart';
import 'package:ssrapp/repository/service_repository.dart';

class ServiceViewModel extends Model {
  ServiceRepository serviceRepository = ServiceRepository();
  List<dynamic> listItem;
  ServiceModel serviceModel;
  List<ServiceModel> serviceList;
  ServiceViewModel(){
    getAllServices();
  }

  void getAllServices() async {
    var reponse = await serviceRepository.getAllService();
    if (reponse != null) {
      reponse = jsonDecode(reponse);
      listItem = reponse['data'];
      serviceList = listItem.map((e) => ServiceModel.fromJson(e)).toList();
    }
    notifyListeners();
  }

  void getService(String serviceId) async {
    var reponse = await serviceRepository.getService(serviceId);
    if (reponse != null) {
      reponse = jsonDecode(reponse);
      serviceModel = ServiceModel.fromJson(reponse);
      notifyListeners();
    }
  }
}
