import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:ssrapp/page/src/notification/Notification_Model.dart';

import 'Notification_ViewModel.dart';
class NotificationView extends StatefulWidget {
  @override
  _NotificationViewState createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
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
    child: ScopedModel(
      model: NotificationViewModel(),
      child: ScopedModelDescendant<NotificationViewModel>(
          builder: (BuildContext buildContext, Widget child, NotificationViewModel model) {
            return  ListView.builder(
                itemCount: model.notificationList != null ? model.notificationList.length : 1,
                itemBuilder: (context, index) {
                  NotificationModel dto = model.notificationList[index];
                  return   Padding(
                    padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
                    child: Container(
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
//                            SizedBox(
//                                height: ScreenUtil().setHeight(180),
//                                width: ScreenUtil().setWidth(180),
//                                child: ClipOval(
//                                  child: Image.asset(
//                                    'assets/images/account.png',
//                                    fit: BoxFit.cover,
//                                  ),
//                                )),
//                            SizedBox(
//                              width: 15,
//                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    dto.title,
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
                                    dto.content,
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
                    ),
                  );
                });
          }),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return _notificationBody();
  }
}
