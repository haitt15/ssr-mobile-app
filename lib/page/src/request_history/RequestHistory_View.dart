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
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 156, 20, 1),
        elevation: 0.0,
        title: Center(
          child: Text(
            "Request History",
            style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontWeight: FontWeight.w800,
              fontFamily: "Montserrat",
              fontSize: 22.0,
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, right: 15, left: 15, bottom: 5),
              child: Container(
                width: double.infinity,
                height: 190,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        offset: Offset(3.0, 3.0),
                        blurRadius: 5.0,
                      ),
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        offset: Offset(-3.0, -3.0),
                        blurRadius: 5.0,
                      ),
                    ]),
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Text(
                                "Ticket: " + "0345",
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontFamily: "Roboto",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Center(
                              child: Text(
                                "Date Request: " + "30/06/2020",
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontFamily: "Roboto",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Center(
                              child: Text(
                                "Chưa Nhận Được Mail Đóng Học Phí",
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontFamily: "Roboto",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Center(
                              child: Text(
                                "--------- " + "In Progress" + " --------",
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontFamily: "Roboto",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Title: " + "Thay đổi trạng thái",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontFamily: "Roboto",
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Content: " +
                                  "Nhan vien A da thay doi trang thai tu waiting thanh in progress",
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontFamily: "Roboto",
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
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
}
