import 'package:flutter/material.dart';

class Comment_Screen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Comment_Screen> {
  final _txtComment = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 10, 5),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.label,
                  ),
                  Text(
                    " Ticket ID: " + "wdffewfw",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
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
                      " Service: " + "Đăng ký đi xe bus",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
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
                    onTap: () {},
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
                    style: TextStyle(fontSize: 23, color: Colors.black87),
                  )),
                ),
              ),
            ),
            Material(
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
                                  " " + "Nhân viên A",
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
                                  "\t" + "2020-07-24T18:07:51.82",
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
                                  "nhớ đóng tiền nha em",
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
            ),
            Material(
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
                                  " " + "Nhân viên A",
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
                                  "\t" + "2020-07-24T18:07:51.82",
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
                                  "nhớ đóng tiền nha em",
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
            ),
            Material(
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
                                  " " + "Nhân viên A",
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
                                  "\t" + "2020-07-24T18:07:51.82",
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
                                  "nhớ đóng tiền nha em",
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
            ),
            Material(
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
                                  " " + "Nhân viên A",
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
                                  "\t" + "2020-07-24T18:07:51.82",
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
                                  "nhớ đóng tiền nha em",
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
            ),
            Material(
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
                                  " " + "Nhân viên A",
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
                                  "\t" + "2020-07-24T18:07:51.82",
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
                                  "nhớ đóng tiền nha em",
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
            ),
            Material(
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
                                  " " + "Nhân viên A",
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
                                  "\t" + "2020-07-24T18:07:51.82",
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
                                  "nhớ đóng tiền nha em",
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
            ),

          ],
        ),
      ),
    );
  }

  Widget _createHorizontalLine(double size) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: Container(
            height: 1.0, width: size, color: Colors.grey),
      );
}
