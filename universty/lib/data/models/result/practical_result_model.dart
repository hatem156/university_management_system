class PracticalResultModel {
  String studentId;
  String studentName;
  String courseId;
  String courseName;
  String courseScore;
  String semesterId;
  String level;
  String year;

  PracticalResultModel({
    required this.studentId,
    required this.studentName,
    required this.courseId,
    required this.courseName,
    required this.courseScore,
    required this.semesterId,
    required this.level,
    required this.year,
  });

  factory PracticalResultModel.fromJson(Map<String, dynamic> json) =>
      PracticalResultModel(
        studentId: json["id"],
        studentName: json["name"],
        courseId: json["course_id"],
        courseName: json["course_name"],
        courseScore: json["course_score"],
        semesterId: json["semester_id"],
        level: json["level"],
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "id": studentId,
        "name": studentName,
        "course_id": courseId,
        "course_name": courseName,
        "course_score": courseScore,
        "semester_id": semesterId,
        "level": level,
        "year": year,
      };
}
