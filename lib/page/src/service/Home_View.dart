import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:ssrapp/page/progress_bar.dart';
import 'package:ssrapp/page/src/service/Home_ViewModel.dart';
import 'package:ssrapp/page/src/service/Service_Model.dart';
import 'package:ssrapp/page/src/service_detail/ServiceDetail_View.dart';

class GridHome extends StatefulWidget {
  @override
  _GridHomeState createState() => _GridHomeState();
}

class _GridHomeState extends State<GridHome> {
  String _message = '';
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  @override
  void initState() {
    // TODO: implement initState
    getMessage();
    super.initState();
  }

  void getMessage() {
    _firebaseMessaging.configure(
        onMessage: (Map<String, dynamic> message) async {
          print('received message');
          setState(() => _message = message["notification"]["body"]);
        }, onResume: (Map<String, dynamic> message) async {
      print('on resume $message');
      setState(() => _message = message["notification"]["body"]);
    }, onLaunch: (Map<String, dynamic> message) async {
      print('on launch $message');
      setState(() => _message = message["notification"]["body"]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: HomeViewModel(),
      child: Stack(
        children: <Widget>[
          ScopedModelDescendant<HomeViewModel>(builder:
              (BuildContext buildContext, Widget child, HomeViewModel model) {
            return Flexible(
              child: model.serviceList == null
                  ? ProgressBarScreen()
                  : GridView.count(
                  childAspectRatio: 1.0,
                  padding: EdgeInsets.only(left: 16, right: 16, top: 14),
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                  children: model.serviceList.map((service) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Service_Detail(service: service,)));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 156, 24, 0.9),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
//                      Image.asset(
//                        data[''],
//                        width: 42,
//                      ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              service.serviceNm,
                              style: (TextStyle(
                                  fontFamily: 'OpenSans',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              service.descriptionService,
                              style: (TextStyle(
                                  fontFamily: 'OpenSans',
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              service.departmentNm,
                              style: (TextStyle(
                                  fontFamily: 'OpenSans',
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600)),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList()),
            );
          }),
        ],
      ),
    );
  }
}