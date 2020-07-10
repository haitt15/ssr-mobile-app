import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:ssrapp/page/src/request_detail/RequestDetail_View.dart';
import 'package:ssrapp/page/src/service/Service_Model.dart';
import 'package:ssrapp/page/src/service_detail/ServiceDetail_ViewModel.dart';
import 'package:ssrapp/repository/service_repository.dart';

class Service_Detail extends StatefulWidget {
  ServiceModel service;

  Service_Detail({this.service});

  @override
  RequestDetailState createState() => RequestDetailState();
}

class RequestDetailState extends State<Service_Detail> {
  final _txtRequest = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: ServiceDetail(),
      child: ScopedModelDescendant<ServiceDetail>(builder:
          (BuildContext buildContext, Widget child, ServiceDetail model) {
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
                              widget.service.serviceNm,
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
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Container(
                      height: 1.0,
                      width: 130.0,
                      color: Color.fromRGBO(200, 201, 196, 1)),
                ),
                SizedBox(
                  height: 12,
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
                              widget.service.departmentNm,
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
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Container(
                      height: 1.0,
                      width: 130.0,
                      color: Color.fromRGBO(200, 201, 196, 1)),
                ),
                SizedBox(
                  height: 12,
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
                        widget.service.descriptionService,
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
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: _txtRequest,
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    maxLength: 500,
                    style: TextStyle(fontSize: 19.0),
                    decoration: InputDecoration(
                      labelStyle: TextStyle(fontSize: 23.0),
                      labelText: 'Request Description',
                      hintText: "Write description for your request...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: RaisedButton(
                  onPressed: () async {
                    bool result = await model.register(
                        widget.service.serviceID, _txtRequest.text);
                    if (result) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Request_Detail(requestDetailModel: model.requestDetailModel,)));
                    }
                  },
                  child: const Text('Request', style: TextStyle(fontSize: 23)),
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
      }),
    );
  }
}
