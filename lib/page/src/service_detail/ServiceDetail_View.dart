import 'dart:ui';

import 'package:flutter/material.dart';

class Service_Detail extends StatefulWidget {
  @override
  RequestDetailState createState() => RequestDetailState();
}

class RequestDetailState extends State<Service_Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 156, 20, 1),
        elevation: 0.0,
        title: Center(
          child: Text(
            "Service Detail",
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
            Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 260,
                      height: 40,
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
                      child: Center(
                        child: Text(
                          "Finance" + " Department",
                          style: const TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat",
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Container(
                  height: 1.0,
                  width: 130.0,
                  color: Color.fromRGBO(200, 201, 196, 1)),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 0, top: 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 170,
                      height: 35,
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
                      child: Center(
                        child: Text(
                          "Room: " + "333",
                          style: const TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat",
                            fontSize: 19,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 0, top: 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 250,
                      height: 35,
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
                      child: Center(
                        child: Text(
                          "Hotline: " + "098334651",
                          style: const TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat",
                            fontSize: 19.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Container(
                  height: 1.0,
                  width: 130.0,
                  color: Color.fromRGBO(200, 201, 196, 1)),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 340,
                      height: 35,
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
                      child: Center(
                        child: Text(
                          "Description about department:",
                          style: const TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat",
                            fontSize: 19.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 15,
            ),
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20),
                  child: Text(
                    " Finance Department được lập ra để giải quyết các vấn đề liên quan đến học phí của sinh viên trường Đại học FPT.\n Sinh viên có nhu cầu liên hệ, chi tiết qua thông tin được ghi ở trên.",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.normal,
                        fontSize: 20.0),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Container(
                  height: 1.0,
                  width: 10.0,
                  color: Color.fromRGBO(200, 201, 196, 1)),
            ),
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                onPressed: () {},
                child: const Text('Request', style: TextStyle(fontSize: 23)),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 5,
                splashColor: Colors.white70,
              ),
            ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
