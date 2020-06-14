import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:ssrapp/app.dart';
import 'file:///D:/FPT%20University/CN6/PRM/SSR_App/ssr_app/lib/page/src/profile/menu_button.dart';
import 'package:ssrapp/page/src/login/Login_ViewModel.dart';
import 'package:ssrapp/page/src/profile/Profile_ViewModel.dart';

import '../../../main.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileViewModel profileViewModel;
  String fullName = "";
  String email = "";
  int _selectedOption = 0;

  Widget _profile() => ScopedModelDescendant<ProfileViewModel>(builder:
          (BuildContext context, Widget child, ProfileViewModel model) {
        return  Container(
          width: double.infinity,
          height: ScreenUtil.getInstance().setHeight(320),
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
                    height: ScreenUtil().setHeight(220),
                    width: ScreenUtil().setWidth(220),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/account.png',
                        fit: BoxFit.cover,
                      ),
                    )),
                SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        model.fullName == null ? "" :  model.fullName,
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
                        model.email == null ? "" :  model.email,
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontFamily: "Roboto",
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.edit,
                  color: Color.fromRGBO(255, 156, 24, 1),
                  size: 30,
                ),
              ],
            ),
          ),
        );
      });

  Widget _menuButton() => Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: ListView.builder(
            itemCount: options.length + 2,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return SizedBox(height: 290.0);
              } else if (index == options.length + 1) {
                return SizedBox(height: 100.0);
              }
              return Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10.0),
                width: double.infinity,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35.0),
                  border: _selectedOption == index - 1
                      ? Border.all(color: Colors.black)
                      : null,
                ),
                child: ListTile(
                  trailing: Icon(Icons.keyboard_arrow_right),
                  leading: options[index - 1].icon,
                  title: Text(
                    options[index - 1].title,
                    style: TextStyle(
                        color: _selectedOption == index - 1
                            ? Colors.black
                            : Colors.grey[600],
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  selected: _selectedOption == index - 1,
                  onTap: () {
                    setState(() {
                      _selectedOption = index - 1;
                    });
                    switch (_selectedOption) {
                      case 0:
                        print("Help pressed");
                        break;
                      case 1:
                        print("Setting pressed");
                        break;
                      case 2:
                        LoginViewModel().signOut();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                        break;
                    }
                  },
                ),
              );
            }),
      );


  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: ProfileViewModel(),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: _profile(),
          ),
          _menuButton(),
        ],
      ),
    );
  }
}
