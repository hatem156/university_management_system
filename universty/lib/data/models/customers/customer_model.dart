// To parse this JSON data, do
//
//     final customer = customerFromJson(jsonString);

import 'dart:convert';

List<Customer> customerFromJson(String str) =>
    List<Customer>.from(json.decode(str).map((x) => Customer.fromJson(x)));

String customerToJson(List<Customer> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Customer {
  int id;
  String fname;
  String lname;
  String tel;
  String wts;
  String email;
  String know;
  String place;
  String area;
  String address;
  String account;
  int kind;
  String other;
  String gender;
  String age;
  String birthDate;

  Customer({
    required this.id,
    required this.fname,
    required this.lname,
    required this.tel,
    required this.wts,
    required this.email,
    required this.know,
    required this.place,
    required this.address,
    required this.area,
    required this.account,
    required this.kind,
    required this.other,
    required this.gender,
    required this.age,
    required this.birthDate,
  });

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        id: json["id"],
        fname: json["fname"],
        lname: json["lname"],
        tel: json["tel"],
        wts: json["wts"],
        email: json["email"],
        know: json["know"],
        place: json["place"],
        address: json["address"],
        area: json["area"],
        account: json["account"],
        kind: json["kind"],
        other: json["other"],
        gender: json["gender"],
        age: json["age"],
        birthDate: json["birth_date"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fname": fname,
        "lname": lname,
        "tel": tel,
        "wts": wts,
        "email": email,
        "know": know,
        "place": place,
        "address": address,
        "account": account,
        "area": area,
        "kind": kind,
        "other": other,
        "gender": gender,
        "age": age,
        "birth_date": birthDate,
      };
}
