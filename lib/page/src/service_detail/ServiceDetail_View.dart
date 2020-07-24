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
            title: Text(
              "Service Detail",
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
                SizedBox(
                  height: 20,
                ),
                _createHeader("Service", 95),
                SizedBox(height: 12),
                _getData(widget.service.serviceNm),
                SizedBox(
                  height: 7,
                ),
                _createHorizontalLine(18),
                SizedBox(
                  height: 12,
                ),
                _createHeader("Department", 128),
                SizedBox(height: 12),
                _getData(widget.service.departmentNm),
                SizedBox(
                  height: 7,
                ),
                _createHorizontalLine(18),
                SizedBox(
                  height: 12,
                ),
                _createHeader("Department about Department", 260),
                SizedBox(
                  height: 12,
                ),
                _getData(widget.service.descriptionService),
                SizedBox(
                  height: 15,
                ),
                _createHorizontalLine(18),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    controller: _txtRequest,
                    maxLines: 6,
                    maxLength: 500,
                    style: TextStyle(fontSize: 19.0),
                    decoration: InputDecoration(
                      labelStyle: TextStyle(fontSize: 20.0),
                      labelText: 'Write description for your request',
                      hintText: "Description...",
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
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: SizedBox.fromSize(
                  size: Size(300, 45), // button width and height
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue, // button color
                    child: InkWell(
                      splashColor: Colors.grey, // splash color
                      onTap: () async {
                        bool result = await model.register(
                            widget.service.serviceID, _txtRequest.text);
                        if (result) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Request_Detail(
                                    requestDetailModel:
                                    model.requestDetailModel,
                                  )));
                        }
                      }, // button pressed
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30,
                          ), // icon
                          SizedBox(
                            width: 1,
                          ),
                          Text(
                            "Request",
                            style: TextStyle(
                              fontSize: 20,
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
            ],
          ),
          // This trailing comma makes auto-formatting nicer for build methods.
        );
      }),
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
