import 'dart:ui';

import 'package:flutter/material.dart';

class Request_History extends StatefulWidget {
  @override
  RequestHistoryState createState() => RequestHistoryState();
}

class RequestHistoryState extends State<Request_History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 156, 20, 1),
        elevation: 0.0,
        title: Text(
          "Request History",
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
                  Expanded(
                    child: Text(
                      " Ticket ID: " + "wdffewfw",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
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
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                  ),
                ],
              ),
            ),
            _createHorizontalLine(5000),
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
                  child: Center(child: Text("History Section",style: TextStyle(
                    fontSize: 23,color: Colors.black87
                  ),)),
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
                          padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.album,size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  " Title:",style: TextStyle(
                                  fontSize: 19,fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 5, 35, 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Cập nhật trạng thái request",style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 5, 10, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.today,size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  " Date:",style: TextStyle(
                                  fontSize: 19,fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 5, 35, 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "2020-07-24T18:07:51.82",style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.comment,size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  " Content:",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 5, 35, 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Nhân viên A đã cập nhật trạng thái request từ Waiting sang In ProgressNhân viên A đã cập nhật trạng thái request từ Waiting sang In ProgressNhân viên A đã cập nhật trạng thái request từ Waiting sang In ProgressNhân viên A đã cập nhật trạng thái request từ Waiting sang In Progress",style: TextStyle(
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
                          padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.album,size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  " Title:",style: TextStyle(
                                  fontSize: 19,fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 5, 35, 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Cập nhật trạng thái request",style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 5, 10, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.today,size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  " Date:",style: TextStyle(
                                  fontSize: 19,fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 5, 35, 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "2020-07-24T18:07:51.82",style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.comment,size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  " Content:",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 5, 35, 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Nhân viên A đã cập nhật trạng thái request từ Waiting sang In ProgressNhân viên A đã cập nhật trạng thái request từ Waiting sang In ProgressNhân viên A đã cập nhật trạng thái request từ Waiting sang In ProgressNhân viên A đã cập nhật trạng thái request từ Waiting sang In Progress",style: TextStyle(
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
                          padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.album,size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  " Title:",style: TextStyle(
                                  fontSize: 19,fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 5, 35, 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Cập nhật trạng thái request",style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 5, 10, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.today,size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  " Date:",style: TextStyle(
                                  fontSize: 19,fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 5, 35, 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "2020-07-24T18:07:51.82",style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.comment,size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  " Content:",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 5, 35, 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Nhân viên A đã cập nhật trạng thái request từ Waiting sang In ProgressNhân viên A đã cập nhật trạng thái request từ Waiting sang In ProgressNhân viên A đã cập nhật trạng thái request từ Waiting sang In ProgressNhân viên A đã cập nhật trạng thái request từ Waiting sang In Progress",style: TextStyle(
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
                          padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.album,size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  " Title:",style: TextStyle(
                                  fontSize: 19,fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 5, 35, 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Cập nhật trạng thái request",style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 5, 10, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.today,size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  " Date:",style: TextStyle(
                                  fontSize: 19,fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 5, 35, 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "2020-07-24T18:07:51.82",style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.comment,size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  " Content:",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 5, 35, 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Nhân viên A đã cập nhật trạng thái request từ Waiting sang In ProgressNhân viên A đã cập nhật trạng thái request từ Waiting sang In ProgressNhân viên A đã cập nhật trạng thái request từ Waiting sang In ProgressNhân viên A đã cập nhật trạng thái request từ Waiting sang In Progress",style: TextStyle(
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
                          padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.album,size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  " Title:",style: TextStyle(
                                  fontSize: 19,fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 5, 35, 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Cập nhật trạng thái request",style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 5, 10, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.today,size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  " Date:",style: TextStyle(
                                  fontSize: 19,fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 5, 35, 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "2020-07-24T18:07:51.82",style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.comment,size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  " Content:",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 5, 35, 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Nhân viên A đã cập nhật trạng thái request từ Waiting sang In ProgressNhân viên A đã cập nhật trạng thái request từ Waiting sang In ProgressNhân viên A đã cập nhật trạng thái request từ Waiting sang In ProgressNhân viên A đã cập nhật trạng thái request từ Waiting sang In Progress",style: TextStyle(
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
                          padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.album,size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  " Title:",style: TextStyle(
                                  fontSize: 19,fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 5, 35, 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Cập nhật trạng thái request",style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 5, 10, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.today,size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  " Date:",style: TextStyle(
                                  fontSize: 19,fontWeight: FontWeight.bold,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 5, 35, 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "2020-07-24T18:07:51.82",style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.comment,size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  " Content:",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 5, 35, 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Nhân viên A đã cập nhật trạng thái request từ Waiting sang In ProgressNhân viên A đã cập nhật trạng thái request từ Waiting sang In ProgressNhân viên A đã cập nhật trạng thái request từ Waiting sang In ProgressNhân viên A đã cập nhật trạng thái request từ Waiting sang In Progress",style: TextStyle(
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

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _createHorizontalLine(double size) => Padding(
    padding: EdgeInsets.symmetric(horizontal: 0),
    child: Container(
        height: 1.0, width: size, color: Colors.grey),
  );
}
