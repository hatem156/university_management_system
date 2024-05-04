class StudentModel {
  int studentId;
  String studentName;
  String age;
  String userName;
  String password;
  String email;
  String department;
  String gender;
  String phoneNumber;
  String code;
  String level;
  String image;
  String status;

  StudentModel({
    required this.studentId,
    required this.studentName,
    required this.age,
    required this.userName,
    required this.password,
    required this.email,
    required this.department,
    required this.gender,
    required this.phoneNumber,
    required this.code,
    required this.level,
    required this.image,
    required this.status,
  });

  factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
        studentId: json["id"],
        studentName: json["name"],
        age: json["age"],
        userName: json["user_name"],
        password: json["password"],
        email: json["email"],
        department: json["department"],
        gender: json["gender"],
        phoneNumber: json["phone_number"],
        code: json["code"],
        level: json["level"],
        image: json["image"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": studentId,
        "name": studentName,
        "age": age,
        "user_name": userName,
        "password": password,
        "email": email,
        "department": department,
        "gender": gender,
        "phone_number": phoneNumber,
        "code": code,
        "level": level,
        "image": image,
        "status": status,
      };
}
