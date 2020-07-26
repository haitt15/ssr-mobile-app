class CommentModel {
  String ticketId;
  String content;
  String username;
  String fullName;
  String insDatetime;


  CommentModel({this.ticketId, this.content, this.username, this.fullName,
    this.insDatetime});

  CommentModel.fromJson(Map<String, dynamic> json)
      : ticketId = json['ticketId'],
        content = json['content'],
        username = json['username'],
        fullName = json['fullName'],
        insDatetime = json['insDatetime'];
}
