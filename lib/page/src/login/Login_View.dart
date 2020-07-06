import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ssrapp/app.dart';
import 'package:ssrapp/main.dart';
import 'package:ssrapp/page/src/profile/Profile_ViewModel.dart';
import '../navigation/Navigation_View.dart';
import '../../signup_screen.dart';
import 'package:ssrapp/page/src/login/Login_ViewModel.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;
  bool result;

  TextEditingController _txtEmail;
  TextEditingController _txtPassword;

  @override
  void initState() {
    super.initState();
    _txtEmail = TextEditingController(text: "");
    _txtPassword = TextEditingController(text: "");
  }

  bool _isLoading = false;
  ScaffoldState scaffoldState;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  _showMsg(BuildContext context, msg) {
    final snackBar = SnackBar(
      content: Text(msg),
      duration: Duration(seconds: 5),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyApp()));
        },
      ),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
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
                  TextField(
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
                        color: Color.fromRGBO(255, 156, 24, 1),
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
                      color: Color.fromRGBO(255, 156, 24, 1),
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
            onTap: () async {
              if (_txtEmail.text.isEmpty || _txtPassword.text.isEmpty) {
                return print("Can't empty email or password");
              }
//              bool result = await AuthService()
//                  .signInWithEmail(_txtEmail.text, _txtPassword.text);
//              if (!result) {
//                return print("Login not success!");
//              }
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
                activeColor: Color.fromRGBO(255, 156, 24, 1),
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
                _isLoading ? null : _loginGoogle();
              },
              AssetImage(
                'assets/images/google.png',
              ),
            ),
            _btnSocialStyle(
              () async {
//                bool result = await AuthService().signInWithFacebook();
//                if (!result) {
//                  print("login fail");
//                }
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
      statusBarColor: Colors.black,
      statusBarBrightness: Brightness.light,
    ));
    return Scaffold(
      key: _scaffoldKey,
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

  void _loginGoogle() async {
    setState(() {
      _isLoading = true;
    });

    LoginViewModel loginViewModel = LoginViewModel();
    var userInfo;
    await loginViewModel.signInWithGoogle().then((value) => {userInfo = value});

    if (userInfo != null) {
      storage.write(key: "UserInfo", value: userInfo);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('UserInfo', userInfo);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => NavigationScreen()));
    } else {
      _showMsg(context, "Please sign in with FPT Education mail");
    }
    setState(() {
      _isLoading = false;
    });
  }
}
