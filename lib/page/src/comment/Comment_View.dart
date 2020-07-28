import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:ssrapp/page/src/comment/Comment_Model.dart';
import 'package:ssrapp/page/src/comment/Comment_ViewModel.dart';

import '../request_detail/RequestDetail_Model.dart';

class Comment_Screen extends StatefulWidget {
  RequestDetailModel requestDetailModel;

  Comment_Screen({this.requestDetailModel});

  @override
  _State createState() => _State();
}

class _State extends State<Comment_Screen> {
  final _txtComment = TextEditingController();
  ProgressDialog pr;

  @override
  Widget build(BuildContext context) {
    pr = ProgressDialog(context,
        type: ProgressDialogType.Normal, isDismissible: false);

    pr.style(
      message: "Please wait a moment ...",
      borderRadius: 10.0,
      backgroundColor: Colors.black54,
      elevation: 10.0,
      messageTextStyle: TextStyle(color: Colors.white, fontSize: 15.0),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 156, 20, 1),
        elevation: 0.0,
        title: Text(
          "Comment",
          style: const TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontWeight: FontWeight.w800,
            fontFamily: "Montserrat",
            fontSize: 22.0,
          ),
        ),
      ),
      body: ScopedModel(
        model: CommentViewModel(ticketId: widget.requestDetailModel.ticketId),
        child: ScopedModelDescendant<CommentViewModel>(builder:
            (BuildContext buildContext, Widget child, CommentViewModel model) {
          model.getAllComment();
          return ListView.builder(
              itemCount:
                  model.commentList != null ? model.commentList.length + 1 : 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 10, 5),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.label,
                            ),
                            Text(
                              " Ticket ID: " +
                                  widget.requestDetailModel.ticketId,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 10, 5),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.dvr,
                            ),
                            Expanded(
                              child: Text(
                                " Service: " +
                                    widget.requestDetailModel.serviceNm,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: TextFormField(
                          keyboardType: TextInputType.multiline,
                          controller: _txtComment,
                          maxLines: 2,
                          maxLength: 100,
                          style: TextStyle(fontSize: 19.0),
                          decoration: InputDecoration(
                            labelStyle: TextStyle(fontSize: 20.0),
                            labelText: 'Write comment...',
                            hintText: "Comment...",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(80, 5, 80, 0),
                        child: SizedBox.fromSize(
                          size: Size(1000, 30), // button width and height
                          child: Material(
                            elevation: 3,
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue, // button color
                            child: InkWell(
                              splashColor: Colors.grey, // splash color
                              onTap: () async {
                                if(_txtComment.text.isNotEmpty){
                                  await pr.show();
                                  bool flg = await model.addComment(widget.requestDetailModel.ticketId,_txtComment.text);
                                  if(flg){
                                    print("comment success");
                                  }
                                  _txtComment.text = "";
                                  await pr.hide();
                                }else{
                                  Fluttertoast.showToast(
                                      msg: "Please write something in comment",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.CENTER,
                                      backgroundColor: Colors.black54,
                                      textColor: Colors.white,
                                      fontSize: 16.0);
                                }
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 27,
                                  ), // icon
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Text(
                                    "Comment",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ), // text
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, right: 15, left: 15, bottom: 5),
                        child: Container(
                          width: double.infinity,
                          height: 28,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(3.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 1.0,
                                ),
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  offset: Offset(-1.0, -1.0),
                                  blurRadius: 1.0,
                                ),
                              ]),
                          child: Container(
                            child: Center(
                                child: Text(
                              "Comment Section",
                              style: TextStyle(
                                  fontSize: 23, color: Colors.black87),
                            )),
                          ),
                        ),
                      ),
                    ],
                  );
                }
                CommentModel dto = model.commentList[index - 1];
                return Material(
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadowColor: Colors.white,
                        elevation: 10,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 5, 10, 0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.account_circle,
                                    size: 30,
                                  ),
                                  Expanded(
                                    child: Text(
                                      " " + dto.fullName,
                                      style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(47, 0, 10, 0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    size: 15,
                                    color: Colors.black87,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "\t" + DateFormat('dd-MM-yyyy [hh:mm:ss]').format(DateTime.parse(dto.insDatetime)),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 5, 30, 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      dto.content,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
        }),
      ),
    );
  }

  Widget _createHorizontalLine(double size) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: Container(height: 1.0, width: size, color: Colors.grey),
      );
}
