class FeesModel {
  int id;
  String semster;
  String studentName;
  String status;

  FeesModel({
    required this.id,
    required this.semster,
    required this.studentName,
    required this.status,
  });
  factory FeesModel.fromJson(Map<String, dynamic> json) => FeesModel(
        id: json["id"],
        studentName: json["student_name"],
        semster: json["semester"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "student_name": studentName,
        "semester": semster,
        "status": status,
      };
}
