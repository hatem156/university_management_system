class AttendenceModel {
  int id;
  String studentName;
  String courseName;
  String department;
  String semester;
  String code;
  DateTime date;
  String attend;

  AttendenceModel({
    required this.id,
    required this.studentName,
    required this.courseName,
    required this.code,
    required this.semester,
    required this.department,
    required this.date,
    required this.attend,
  });

  factory AttendenceModel.fromJson(Map<String, dynamic> json) =>
      AttendenceModel(
        id: json["id"],
        studentName: json["student_name"],
        courseName: json["course_name"],
        department: json["department"],
        semester: json["semester"],
        code: json["code"],
        date: json["date"],
        attend: json["attend"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "student_name": studentName,
        "course_name": courseName,
        "department": department,
        "semester": semester,
        "code": code,
        "date": date,
        "attend": attend,
      };
}
