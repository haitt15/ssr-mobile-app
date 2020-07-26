import 'dart:convert';

import 'package:scoped_model/scoped_model.dart';
import 'package:ssrapp/page/src/comment/Comment_Model.dart';
import 'package:ssrapp/page/src/service/Service_Model.dart';
import 'package:ssrapp/repository/comment_repository.dart';

import '../../../main.dart';

class CommentViewModel extends Model {
  CommentRepository commentRepository = CommentRepository();
  List<dynamic> listItem;
  String ticketId;
  List<CommentModel> commentList;

  CommentViewModel({this.ticketId}) {
    getAllComment();
  }

  void getAllComment() async {
    var reponse = await commentRepository.getAllComment(ticketId);
    if (reponse != null) {
      reponse = jsonDecode(reponse);
      listItem = reponse['data'];
      commentList = listItem.map((e) => CommentModel.fromJson(e)).toList();
//      storage.write(key: "serviceId", value: );
    }
    notifyListeners();
  }
  Future<bool> addComment(String ticketId, String content) async {
    String username = "";
    dynamic user = await storage.read(key: "UserInfo");
    if (user == null)
      return null;
    else {
      user = jsonDecode(user);
      username = user['username'];
    }
    var response = await commentRepository.addComment(username, ticketId, content);
    if(response != null){
      var json = jsonDecode(response);
      CommentModel commentModel = CommentModel.fromJson(json);
      notifyListeners();
    }
    return true;
  }
}
