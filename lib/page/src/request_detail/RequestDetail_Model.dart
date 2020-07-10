class RequestDetailModel{
  String ticketId;
  String serviceNm;
  String serviceId;
  String content;
  String departmentId;
  String departmentNm;
  String studentNm;
  String studentUsername;
  String staffUsername;
  String staffNm;
  String dueDatetime;
  String status;

  RequestDetailModel({
    this.ticketId,
    this.serviceNm,
    this.serviceId,
    this.content,
    this.departmentId,
    this.departmentNm,
    this.studentNm,
    this.studentUsername,
    this.staffUsername,
    this.staffNm,
    this.dueDatetime,
    this.status});

  RequestDetailModel.fromJson(Map<String, dynamic> json)
      : ticketId = json['ticketId'],
        serviceNm = json['serviceNm'],
        serviceId = json['serviceId'],
        content = json['content'],
        departmentId = json['departmentId'],
        departmentNm = json['departmentNm'],
        studentNm = json['fullName'],
        studentUsername = json['username'],
        staffUsername = json['staffUsername'],
        staffNm = json['staffNm'],
        dueDatetime = json['dueDateTime'],
        status = json['status'];
}