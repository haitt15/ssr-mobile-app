import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:ssrapp/page/src/profile/Profile_View.dart';
import 'package:ssrapp/page/src/request/Request_View.dart';


import '../service/Home_View.dart';

class NavigationIcon {
  final String title;
  final IconData icon;
  final Color color;

  const NavigationIcon(this.title, this.icon, this.color);
}

const List<NavigationIcon> allNavigationBar = <NavigationIcon>[
  NavigationIcon('Home', Icons.home, Colors.grey),
  NavigationIcon('Request', Icons.event_note, Colors.grey),
  NavigationIcon('Notification', Icons.notifications, Colors.grey),
  NavigationIcon('Menu', Icons.menu, Colors.grey)
];

class NavigationIconScreen extends StatefulWidget {
  const NavigationIconScreen({Key key, this.navigationicon}) : super(key: key);
  final NavigationIcon navigationicon;

  @override
  _NavigationIconScreenState createState() => _NavigationIconScreenState();


}

class _NavigationIconScreenState extends State<NavigationIconScreen> {

  List<Widget> listWidget = new List<Widget>();
  int curIndex = 0;

  @override
  Widget build(BuildContext context) {
    String menuSelected = widget.navigationicon.title;

    switch (menuSelected) {
      case 'Home':
        curIndex = 0;
        break;
      case 'Request':
        curIndex = 1;
        break;
      case 'Notification':
        curIndex = 2;
        break;
      case 'Menu':
        curIndex = 3;
        break;
    }

    listWidget.add(GridHome());
    listWidget.add(Request());
    listWidget.add(GridHome());
    listWidget.add(ProfileScreen());

    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 1080, height: 1920, allowFontScaling: true);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
    ));

    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Colors.white,
      appBar:  AppBar(
          title: Text('Student Service Request',
              style: TextStyle(fontSize: ScreenUtil().setSp(55))),
          backgroundColor: Color.fromRGBO(255, 156, 24, 1),
        ),

      body: listWidget.elementAt(curIndex),

//      body: SingleChildScrollView(
//        child: EditProfileScreen(),
//      )

//    body: RequestHistoryScreen(),
//    body: SerivceDetailScreen()
    );
  }
}


