import 'dart:convert';

import 'package:scoped_model/scoped_model.dart';
import 'package:ssrapp/page/src/request_history/RequestHistory_Model.dart';
import 'package:ssrapp/repository/request_history_repository.dart';
import '../request_detail/RequestDetail_Model.dart';

class RequestHistoryViewModel extends Model {
  RequestHistoryRepository requestHistoryRepository = RequestHistoryRepository();
  List<dynamic> listItem;
  List<RequestHistoryModel> requestHistoryList;
  String ticketId;
  RequestHistoryViewModel({this.ticketId}) {
    getRequestHistory();
  }

  void getRequestHistory() async {
    var reponse = await requestHistoryRepository.getRequestHistory(ticketId);
    if (reponse != null) {
      reponse = jsonDecode(reponse) as List;
      listItem = reponse;
      requestHistoryList =
          listItem.map((e) => RequestHistoryModel.fromJson(e)).toList();
//      storage.write(key: "serviceId", value: );
    }
    notifyListeners();
  }
}
