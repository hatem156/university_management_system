// To parse this JSON data, do
//
//     final safeVal = safeValFromJson(jsonString);

import 'dart:convert';

List<SafeVal> safeValFromJson(String str) =>
    List<SafeVal>.from(json.decode(str).map((x) => SafeVal.fromJson(x)));

String safeValToJson(List<SafeVal> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SafeVal {
  String value;

  SafeVal({
    required this.value,
  });

  factory SafeVal.fromJson(Map<String, dynamic> json) => SafeVal(
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
      };
}
