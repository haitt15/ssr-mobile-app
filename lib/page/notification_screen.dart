import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  Widget _notification() => Container(
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
          SizedBox(
              height: ScreenUtil().setHeight(180),
              width: ScreenUtil().setWidth(180),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/account.png',
                  fit: BoxFit.cover,
                ),
              )),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Title Request",
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

  Widget _notificationBody() => Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
          child: _notification(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
          child: _notification(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
          child: _notification(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
          child: _notification(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
          child: _notification(),
        ),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return _notificationBody();
  }
}
