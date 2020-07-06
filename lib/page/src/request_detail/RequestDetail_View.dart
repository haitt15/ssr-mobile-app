import 'dart:ui';

import 'package:flutter/material.dart';

class Request_Detail extends StatefulWidget {
  @override
  RequestDetailState createState() => RequestDetailState();
}

class RequestDetailState extends State<Request_Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 156, 20, 1),
        elevation: 0.0,
        title: Center(
          child: Text(
            "Request Detail",
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
            SizedBox(
              height: 20,
            ),
            Stack(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Row(
                      children: <Widget>[
                          Container(
                            width:150,
                            height: 38,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 166, 46, 1),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(7.0),
                                  bottomRight: Radius.circular(7.0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.16),
                                      offset: Offset(0, 10),
                                      blurRadius: 6.0)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25, top: 8),
                              child: Text(
                                "In Progress",
                                style: const TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Montserrat",
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(left: 0, top: 55),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 270,
                          height: 38,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 166, 46, 1),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(7.0),
                                bottomRight: Radius.circular(7.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.16),
                                    offset: Offset(0, 10),
                                    blurRadius: 6.0)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25, top: 8),
                            child: Text(
                              "30/06/2020" + "  -  " + "07/07/2020",
                              style: const TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Montserrat",
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Positioned(
                  top: 110,
                  right: 0,
                  child: Container(
                    width: 260,
                    height: 100,
                    decoration: new BoxDecoration(
                        color: Color.fromRGBO(255, 166, 46, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.16),
                              offset: Offset(0, 10),
                              blurRadius: 6.0)
                        ]),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 15,
                          left: 35,
                          child: Container(
                            width: 180,
                            height: 40,
                            child: Text(
                              "Ticket",
                              style: const TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontWeight: FontWeight.w700,
                                fontFamily: "Montserrat",
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          left: 30,
                          child: Container(
                            width: 90,
                            height: 40,
                            child: Text(
                              "0564",
                              style: const TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Montserrat",
                                fontSize: 29.0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 25,
                          right: 20,
                          child: Container(
                            width: 100,
                            height: 40,
                            child: Text(
                              "Finance Departments",
                              style: const TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Montserrat",
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Container(
                    width: double.infinity,
                    height: 210,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Chưa Nhận Được Mail Đóng Học Phí",
                style: const TextStyle(
                  color: Color.fromRGBO(32, 32, 32, 1),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Montserrat",
                  fontSize: 21.0,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                  height: 1.0,
                  width: 130.0,
                  color: Color.fromRGBO(200, 201, 196, 1)),
            ),
            SizedBox(
              height: 15,
            ),
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20),
                  child: Text(
                    "Ngày 28/06/2020, Em có lên TP Bank đóng học phí kì 7 ngành KTPM. Hiện đến giờ vẫn chưa nhận được mail thông báo. Mong anh/chị kiểm tra trong thời gian sớm giúp em ạ.",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.normal,
                        fontSize: 20.0),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: RaisedButton(
              onPressed: () {},
              child:
                  const Text('History', style: TextStyle(fontSize: 23)),
              color: Colors.blue,
              textColor: Colors.white,
              elevation: 5,
              splashColor: Colors.white70,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: RaisedButton(
              onPressed: () {},
              child:
              const Text('Comment', style: TextStyle(fontSize: 23)),
              color: Colors.blue,
              textColor: Colors.white,
              elevation: 5,
              splashColor: Colors.white70,
            ),
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
