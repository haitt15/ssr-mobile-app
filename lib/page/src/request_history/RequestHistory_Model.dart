class RequestHistoryModel{
  String ticketId;
  String contentHistory;
  String updDatetime;


  RequestHistoryModel({this.ticketId, this.contentHistory, this.updDatetime});

  RequestHistoryModel.fromJson(Map<String, dynamic> json)
      : ticketId = json['ticketId'],
        contentHistory = json['contentHistory'],
        updDatetime = json['updDatetime'];
}