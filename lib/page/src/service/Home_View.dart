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
                      crossAxisSpacing: 9,
                      mainAxisSpacing: 9,
                      children: model.serviceList.map((service) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Service_Detail(
                                          service: service,
                                        )));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.orangeAccent, width: 1.0),
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                              boxShadow: <BoxShadow>[
                                new BoxShadow(
                                  color: Colors.orangeAccent,
                                  blurRadius: 3.0,
                                  offset: new Offset(0.0, 1.0),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 20,
                                ),
                                Image.asset(
                                  "assets/images/register1.png",
                                  width: 45,
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  service.departmentNm,
                                  style: (TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 14,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w600)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10,0, 10, 0),
                                  child: Text(
                                    service.serviceNm,
                                    style: (TextStyle(
                                        fontFamily: 'OpenSans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800)),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10,0, 10, 0),
                                  child: Text(
                                    service.descriptionService,
                                    style: (TextStyle(
                                        fontFamily: 'OpenSans',
                                        fontSize: 14,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w400)),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
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
