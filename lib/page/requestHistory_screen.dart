import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestHistoryScreen extends StatefulWidget {
  @override
  _RequestHistoryScreenState createState() => _RequestHistoryScreenState();
}

class _RequestHistoryScreenState extends State<RequestHistoryScreen> {
  Widget _boxRequest() => Container(
        width: double.infinity,
        height: ScreenUtil.getInstance().setHeight(170),
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
                      "Title: Registration a repeat course",
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontFamily: "Roboto",
                          fontSize: ScreenUtil().setSp(55),
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Date time: 2020/05/30",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontFamily: "Roboto",
                        fontSize: ScreenUtil().setSp(40),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget _requestInfo() => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14, top: 40),
              child: _boxRequest(),
            ),
            SizedBox(height: 30),
            Text(
              "Request history",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  fontFamily: "OpenSans"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
              child: _requestBody(),
            ),
          ],
        ),
      );

  Widget _request() => Container(
        width: double.infinity,
        height: ScreenUtil.getInstance().setHeight(250),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "My Request",
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontFamily: "Roboto",
                          fontSize: ScreenUtil().setSp(55),
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Your request in progress...",
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontFamily: "Roboto",
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget _requestBody() => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
              child: _request(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
              child: _request(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
              child: _request(),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return _requestInfo();
  }
}
