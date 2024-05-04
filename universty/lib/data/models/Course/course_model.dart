class CourseModel {
  int id;
  String courseName;
  String doctorName;
  String numOfStudents;
  String semester;
  String department;
  String level;
  String image;

  CourseModel({
    required this.id,
    required this.courseName,
    required this.doctorName,
    required this.numOfStudents,
    required this.semester,
    required this.department,
    required this.level,
    required this.image,
  });

  factory CourseModel.fromJson(Map<String, dynamic> json) => CourseModel(
        id: json["id"],
        courseName: json["course_name"],
        doctorName: json["doctor_name"],
        numOfStudents: json["num_of_students"],
        semester: json["semester"],
        department: json["department"],
        level: json["level"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "course_name": courseName,
        "doctor_name": doctorName,
        "num_of_students": numOfStudents,
        "semester": semester,
        "department": department,
        "level": level,
        "image": image,
      };
}
