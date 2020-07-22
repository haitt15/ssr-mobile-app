import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:ssrapp/page/src/login/Login_View.dart';


class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  Widget _inputForm() => Container(
        width: double.infinity,
        height: ScreenUtil.getInstance().setHeight(880),
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
        child: Padding(
          padding: EdgeInsets.only(left: 14.0, right: 14.0, top: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Sign up",
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: ScreenUtil.getInstance().setSp(65),
                      fontWeight: FontWeight.bold,
                      letterSpacing: .6,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(20),
              ),
              Text(
                "Username",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: ScreenUtil.getInstance().setSp(40),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 40,
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    fontFamily: 'Opensans',
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5.0),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 20,
                    ),
                    hintText: 'Enter your username',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(50),
              ),
              Text(
                "Email",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: ScreenUtil.getInstance().setSp(40),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 40,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    fontFamily: 'Opensans',
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5.0),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.grey,
                      size: 20,
                    ),
                    hintText: 'Enter your Email',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(50),
              ),
              Text(
                "Password",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: ScreenUtil.getInstance().setSp(40),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 40,
                child: TextField(
                  obscureText: true,
                  style: TextStyle(
                    fontFamily: 'Opensans',
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5.0),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                      size: 20,
                    ),
                    hintText: 'Enter your Password',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(50),
              ),
              Text(
                "Confirm Password",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: ScreenUtil.getInstance().setSp(40),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 40,
                child: TextField(
                  obscureText: true,
                  style: TextStyle(
                    fontFamily: 'Opensans',
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5.0),
                    prefixIcon: Icon(
                      Icons.adjust,
                      color: Colors.grey,
                      size: 20,
                    ),
                    hintText: 'Enter Password again',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget _btnSignup() => Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        width: double.infinity,
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
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Text("Sign up",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins-Bold",
                      fontSize: 18,
                      letterSpacing: 1.0)),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 1080, height: 1920, allowFontScaling: true);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: ScreenUtil.getInstance().setHeight(280),
                  width: ScreenUtil.getInstance().setWidth(1080),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 180.0),
              child: Column(
                children: <Widget>[
                  _inputForm(),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(60),
                  ),
                  _btnSignup(),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(60),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen())),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already a user? ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'Login now',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 156, 24, 1),
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
