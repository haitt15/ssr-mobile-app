import 'dart:ui';

import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  @override
  RequestState createState() => RequestState();
}

class RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 156, 20, 1),
        elevation: 0.0,
        title: Center(
          child: Text(
            "List of Requests",
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
              padding: const EdgeInsets.only(top: 20,right: 15,left: 15,bottom: 5),
              child: Container(
                width: double.infinity,
                height: 120,
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
                                "--- " + "In Progress" + " ---",
                                style: TextStyle(
                                    color: Colors.grey[700],
                                    fontFamily: "Roboto",
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Center(
                              child: Text(
                                "Chưa Nhận Được Mail Đóng Học Phí",
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontFamily: "Roboto",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),

                            Center(
                              child: Text(
                                "Tap for more info",
                                style: TextStyle(
                                    color: Colors.grey[500],
                                    fontFamily: "Roboto",
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400),
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
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
