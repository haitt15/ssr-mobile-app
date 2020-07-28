class NotificationModel {
  String title;
  String content;
  String insDatetime;


  NotificationModel({this.title, this.content, this.insDatetime});

  NotificationModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        content = json['content'],
        insDatetime = json['insDatetime'];
}