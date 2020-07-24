import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:speed_dial/speed_dial.dart';
import 'package:ssrapp/page/src/comment/Comment_View.dart';
import 'package:ssrapp/page/src/request_detail/RequestDetail_Model.dart';
import 'package:ssrapp/page/src/request_history/RequestHistory_View.dart';

class Request_Detail extends StatefulWidget {
  RequestDetailModel requestDetailModel;

  Request_Detail({this.requestDetailModel});

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
          title: Text(
            "Request Detail",
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Positioned(
                    top: 30,
                    right: 0,
                    child: Container(
                      width: 280,
                      height: 100,
                      decoration: new BoxDecoration(
                        color: Color.fromRGBO(255, 166, 46, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        boxShadow: <BoxShadow>[
                          new BoxShadow(
                            color: Colors.black,
                            blurRadius: 3.0,
                            offset: new Offset(0.0, 1.0),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 25,
                            left: 40,
                            child: Container(
                              width: 180,
                              height: 20,
                              child: Text(
                                "Ticket ID:",
                                style: const TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Montserrat",
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 14,
                            right: 20,
                            child: Container(
                              width: 135,
                              height: 40,
                              child: Center(
                                child: Text(
                                  widget.requestDetailModel.ticketId,
                                  style: const TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Montserrat",
                                    fontSize: 30.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            left: 20,
                            child: Container(
                              width: 250,
                              height: 40,
                              child: Center(
                                child: Text(
                                  widget.requestDetailModel.departmentNm,
                                  style: const TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontWeight: FontWeight.w800,
                                    fontFamily: "Montserrat",
                                    fontSize: 18.0,
                                  ),
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
                      height: 150,
                    ),
                  )
                ],
              ),
              _createHeader("Status", 95),
              SizedBox(height: 12),
              _getData(widget.requestDetailModel.status),
              SizedBox(
                height: 7,
              ),
              _createHorizontalLine(18),
              SizedBox(
                height: 12,
              ),
              _createHeader("Due DateTime", 145),
              SizedBox(height: 12),
              _getData(widget.requestDetailModel.dueDatetime),
              SizedBox(
                height: 7,
              ),
              _createHorizontalLine(18),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    widget.requestDetailModel.serviceNm,
                    style: const TextStyle(
                      color: Color.fromRGBO(32, 32, 32, 1),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat",
                      fontSize: 21.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              _createHorizontalLine(40),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                    widget.requestDetailModel.content,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 18.0),
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            backgroundColor: Colors.purpleAccent.withOpacity(0.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.assignment,
                  size: 23,
                ),
                Text(
                  "Google\nForm",
                  style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            onPressed: () {},
            heroTag: null,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.grey.withOpacity(0.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.history),
                Text(
                  "History",
                  style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Request_History()));
            },
            heroTag: null,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.lightBlueAccent.withOpacity(0.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.comment),
                Text(
                  "Comment",
                  style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Comment_Screen()));
            },
            heroTag: null,
          ),
        ])

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  Widget _createHeader(String header, double boxWidth) => Padding(
      padding: const EdgeInsets.only(left: 0, top: 0),
      child: Row(
        children: <Widget>[
          Container(
            width: boxWidth,
            height: 35,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 166, 46, 1),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(7.0),
                bottomRight: Radius.circular(7.0),
              ),
              boxShadow: <BoxShadow>[
                new BoxShadow(
                  color: Colors.black,
                  blurRadius: 3.0,
                  offset: new Offset(0.0, 1.0),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 8),
              child: Text(
                header,
                style: const TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontWeight: FontWeight.w800,
                  fontFamily: "Montserrat",
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ));

  Widget _getData(String data) => Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20),
            child: Text(
              data,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.normal,
                  fontSize: 20.0),
            ),
          )
        ],
      );

  Widget _createHorizontalLine(double size) => Padding(
        padding: EdgeInsets.symmetric(horizontal: size),
        child: Container(
            height: 1.0, width: 130.0, color: Color.fromRGBO(200, 201, 196, 1)),
      );
}
