import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ssrapp/screens/signup_screen.dart';
import 'package:ssrapp/services/auth.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;
  bool result;
  String data;
  TextEditingController _txtEmail;
  TextEditingController _txtPassword;

  @override
  void initState() {
    super.initState();
    _txtEmail = TextEditingController(text: "");
    _txtPassword = TextEditingController(text: "");
  }

  Widget _inputForm() => Container(
        width: double.infinity,
        height: ScreenUtil.getInstance().setHeight(700),
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
                    "Sign In",
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
                  controller: _txtEmail,
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
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: <Widget>[
                  TextFormField(
                    controller: _txtPassword,
                    obscureText: true,
                    style: TextStyle(
                      fontFamily: 'Opensans',
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 14.0),
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
                  GestureDetector(
                    child: Text(
                      "Show",
                      style: TextStyle(
                        color: Colors.blue,
                        fontFamily: "Poppins",
                        fontSize: ScreenUtil.getInstance().setSp(30),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(50),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: "Poppins",
                      fontSize: ScreenUtil.getInstance().setSp(35),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget _btnSignIn() => Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFF4169e1), Color(0xFF00ffff)]),
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
            onTap: () async {
              if (_txtEmail.text.isEmpty || _txtPassword.text.isEmpty) {
                return print("Can't empty email or password");
              } else {

              }
              bool result = await AuthService()
                  .signInWithEmail(_txtEmail.text, _txtPassword.text);
              if (!result) {
                return print("Login not success!");
              }
            },
            child: Center(
              child: Text("LOGIN",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins-Bold",
                      fontSize: 18,
                      letterSpacing: 1.0)),
            ),
          ),
        ),
      );

  Widget _cbRemember() => Container(
        child: Row(
          children: <Widget>[
            Theme(
              data: ThemeData(unselectedWidgetColor: Colors.grey),
              child: Checkbox(
                value: _rememberMe,
                checkColor: Colors.white,
                activeColor: Colors.blue,
                onChanged: (value) {
                  setState(() {
                    _rememberMe = value;
                  });
                },
              ),
            ),
            Text(
              'Remember me',
              style: TextStyle(
                color: Colors.black,
                fontFamily: "OpenSans",
              ),
            ),
          ],
        ),
      );

  Widget _btnSocialStyle(Function onTap, AssetImage logo) => GestureDetector(
        onTap: onTap,
        child: Container(
          height: 55.0,
          width: 55.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 2),
                blurRadius: 6.0,
              ),
            ],
            image: DecorationImage(
              image: logo,
            ),
          ),
        ),
      );

  Widget _btnSocial() => Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _btnSocialStyle(
              () async {
                bool result = await AuthService().signInWithGoogle();
                if (!result) {
                  print("login fail");
                }
              },
              AssetImage(
                'assets/images/google.png',
              ),
            ),
            _btnSocialStyle(
              () async {
                bool result = await AuthService().signInWithFacebook();
                if (!result) {
                  print("login fail");
                }
              },
              AssetImage(
                'assets/images/facebook.jpg',
              ),
            ),
          ],
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
                padding: EdgeInsets.only(top: 15.0),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: ScreenUtil.getInstance().setHeight(250),
                  width: ScreenUtil.getInstance().setWidth(1080),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 110.0),
              child: Column(
                children: <Widget>[
                  _inputForm(),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(35),
                  ),
                  _cbRemember(),
                  _btnSignIn(),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(60),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '- OR -',
                        style: TextStyle(
                          fontSize: ScreenUtil.getInstance().setSp(40),
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Sign in with',
                        style: TextStyle(
                          fontSize: ScreenUtil.getInstance().setSp(40),
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: "OpenSans",
                        ),
                      ),
                    ],
                  ),
                  _btnSocial(),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen())),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Don\'t have an Account? ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              color: Colors.blue,
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
