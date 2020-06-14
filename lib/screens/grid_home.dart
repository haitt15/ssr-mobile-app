import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:ssrapp/services/auth.dart';
class GridHome extends StatefulWidget {
  @override
  _GridHomeState createState() => _GridHomeState();
}

class _GridHomeState extends State<GridHome> {
  Items item1 = new Items(
      title: "Suspend",
      subtitle: "Suspend one semester",
      event: "3 Request",
      img: "assets/images/suspend1.png");

  Items item2 = new Items(
    title: "Register",
    subtitle: "Register to repeat a course",
    event: "4 Request",
    img: "assets/images/register2.png",
  );

  Items item3 = new Items(
    title: "Suspend",
    subtitle: "Suspend subject",
    event: "3 Request",
    img: "assets/images/suspend2.png",
  );

  Items item4 = new Items(
    title: "Register",
    subtitle: "Register to improve mark",
    event: " 10 Request",
    img: "assets/images/register1.png",
  );

  Items item5 = new Items(
    title: "Register",
    subtitle: "Register extra courses",
    event: "100 Request",
    img: "assets/images/register3.png",
  );

  Items item6 = new Items(
    title: "Cancel",
    subtitle: "Cancel registration",
    event: "2 Request",
    img: "assets/images/cancel.png",
  );

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  String _message = '';
  _registerOnFirebase() {
    _firebaseMessaging.subscribeToTopic("all");
    _firebaseMessaging.getToken().then((token) => print(token));
  }

  @override
  void initState() {
    _registerOnFirebase();
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
    List<Items> myList = [item1, item2, item3, item4, item5, item6];

    return Stack(
      children: <Widget>[
        Flexible(
          child: GridView.count(
              childAspectRatio: 1.0,
              padding: EdgeInsets.only(left: 16, right: 16, top: 14),
              crossAxisCount: 2,
              crossAxisSpacing: 18,
              mainAxisSpacing: 18,
              children: myList.map((data){
                return Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 156, 24, 0.9),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        data.img,
                        width: 42,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        data.title,
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
                        data.subtitle,
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
                        data.event,
                        style: (TextStyle(
                            fontFamily: 'OpenSans',
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                );
              }).toList()),
        ),
      ],
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;

  Items({this.title, this.subtitle, this.event, this.img});
}
