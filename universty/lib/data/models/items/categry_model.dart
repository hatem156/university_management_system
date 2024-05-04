import 'dart:convert';

List<CategoryModel> categoryModelFromJson(String str) =>
    List<CategoryModel>.from(
        json.decode(str).map((x) => CategoryModel.fromJson(x)));

String categoryModelToJson(List<CategoryModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryModel {
  String id;
  String name;
  String kind;
  String password;
  String value;
  String image;

  CategoryModel({
    required this.id,
    required this.name,
    required this.kind,
    required this.password,
    required this.value,
    required this.image,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json["id"].toString(),
        name: json["name"],
        kind: json["kind"].toString(),
        password: json["password"],
        value: json["value"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "kind": kind,
        "password": password,
        "value": value,
        "image": image,
      };
}
