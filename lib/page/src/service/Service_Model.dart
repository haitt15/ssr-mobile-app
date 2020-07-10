class ServiceModel {
  String serviceID;
  String serviceNm;
  String descriptionService;
  String formLink;
  String departmentNm;

  ServiceModel(this.serviceID, this.serviceNm, this.descriptionService,
      this.formLink, this.departmentNm);


  ServiceModel.fromJson(Map<String, dynamic> json)
      : serviceID = json['serviceId'],
        serviceNm = json['serviceNm'],
        descriptionService = json['descriptionService'],
        formLink = json['formLink'],
        departmentNm = json['departmentNm'];
}
