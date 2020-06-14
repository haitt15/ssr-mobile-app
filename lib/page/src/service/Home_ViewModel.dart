import 'dart:convert';

import 'package:scoped_model/scoped_model.dart';
import 'package:ssrapp/repository/service_repository.dart';

class HomeViewModel extends Model {
  ServiceRepository serviceRepository = ServiceRepository();
  List<dynamic> listItem;

  HomeViewModel(){
    getAllServices();
  }

  void getAllServices() async {
    var reponse = await serviceRepository.getAllService();
    if (reponse != null) {
      reponse = jsonDecode(reponse);
      listItem = reponse['data'];
    }
    notifyListeners();
  }
}
