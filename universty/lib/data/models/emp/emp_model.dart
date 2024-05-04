class EmpModel {
  int empId;
  String empName;
  String userName;
  String userPassword;
  int kind;
  String empTel1;
  String empTel2;
  DateTime empBirth;
  String empNatid;
  String empAddress;
  String empJop;
  int empStopped;
  int empSal;
  String percent;
  int empDays;

  EmpModel({
    required this.empId,
    required this.empName,
    required this.userName,
    required this.userPassword,
    required this.kind,
    required this.empTel1,
    required this.empTel2,
    required this.empBirth,
    required this.empNatid,
    required this.empAddress,
    required this.empJop,
    required this.empStopped,
    required this.empSal,
    required this.percent,
    required this.empDays,
  });

  factory EmpModel.fromJson(Map<String, dynamic> json) => EmpModel(
        empId: json["id"],
        empName: json["emp_name"],
        userName: json["user_name"],
        userPassword: json["user_password"],
        kind: json["kind"],
        empTel1: json["emp_tel1"],
        empTel2: json["emp_tel2"],
        empBirth: DateTime.parse(json["emp_birth"]),
        empNatid: json["emp_natid"],
        empAddress: json["emp_address"],
        empJop: json["emp_jop"],
        empStopped: json["emp_stopped"],
        empSal: json["emp_sal"],
        percent: json["percent"],
        empDays: json["emp_days"],
      );

  Map<String, dynamic> toJson() => {
        "id": empId,
        "emp_name": empName,
        "user_name": userName,
        "user_password": userPassword,
        "kind": kind,
        "emp_tel1": empTel1,
        "emp_tel2": empTel2,
        "emp_birth": empBirth.toIso8601String(),
        "emp_natid": empNatid,
        "emp_address": empAddress,
        "emp_jop": empJop,
        "emp_stopped": empStopped,
        "emp_sal": empSal,
        "percent": percent,
        "emp_days": empDays,
      };
}
