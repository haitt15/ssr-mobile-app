import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SerivceDetailScreen extends StatefulWidget {
  @override
  _SerivceDetailScreenState createState() => _SerivceDetailScreenState();
}

class _SerivceDetailScreenState extends State<SerivceDetailScreen> {

  Widget _boxService(String title, int height) => Container(
    width: double.infinity,
    height: ScreenUtil.getInstance().setHeight(height),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 15.0),
            blurRadius: 15.0,
          ),
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, -10.0),
            blurRadius: 10.0,
          )
        ]),
    child: Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontFamily: "Roboto",
                      fontSize: ScreenUtil().setSp(55),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
  Widget _btnRegister(String name) => Container(
    padding: EdgeInsets.symmetric(vertical: 10.0),
    width: 150,
    decoration: BoxDecoration(
        gradient:
        LinearGradient(colors: [Color(0xFFFF6A00), Color(0xFFFFAE00)]),
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: [
          BoxShadow(
              color: Color(0xFF6078ea).withOpacity(.3),
              offset: Offset(0.0, 8.0),
              blurRadius: 8.0)
        ]),
    child: Material(
      color: Colors.transparent,
        child: Center(
          child: Text(name,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins-Bold",
                  fontSize: 18,
                  letterSpacing: 1.0)),
        ),
      ),
    );
  Widget _serviceInfo() => Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
          child: _boxService("Staff name: your name", 150),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
          child: _boxService("Finance Department", 150),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
          child: _boxService("Room 333", 150),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
          child: _boxService("Description about department", 700),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
          child: Container(
  
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _btnRegister("Register"),
                  SizedBox(width: 25),
                  _btnRegister("Cancel"),
                ],
              ),
            ],
          ),
          )
        ),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return _serviceInfo();
  }
}