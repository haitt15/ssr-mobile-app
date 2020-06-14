import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ClipOval(
            child: Image.asset(
              'assets/images/account.png',
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Your name",
            style: TextStyle(
                color: Colors.grey[800],
                fontFamily: "Roboto",
                fontSize: ScreenUtil().setSp(70),
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "SE130130",
            style: TextStyle(
                color: Colors.grey[500],
                fontFamily: "Roboto",
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 156, 24, 0.9),
                borderRadius: BorderRadius.circular(20)),
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Personal contact info",
                    style: TextStyle(fontSize: 23, color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Email :" + " namese130130@fpt.edu.vn",
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Phone number : +8499999999",
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Address info",
                    style: TextStyle(fontSize: 23, color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Address : Lot T1, High Tech Park",
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                  SizedBox(
                    height: 15,
                  ),
                  Text("City: Ho Chi Minh",
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
