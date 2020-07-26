class RequestModel {
  String ticketId;
  String serviceNm;
  String status;

  RequestModel({this.ticketId, this.serviceNm, this.status});

  RequestModel.fromJson(Map<String, dynamic> json)
      : ticketId = json['ticketId'],
        serviceNm = json['serviceNm'],
        status = json['status'];
}