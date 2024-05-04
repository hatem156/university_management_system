// To parse this JSON data, do
//
//     final billModel = billModelFromJson(jsonString);

class BillShortage {
  String billId;
  String emp;
  String kind;
  String billItems;
  String billTotal;
  String billNotes;
  DateTime billTimestamp;

  BillShortage({
    required this.billId,
    required this.emp,
    required this.kind,
    required this.billItems,
    required this.billTotal,
    required this.billNotes,
    required this.billTimestamp,
  });

  factory BillShortage.fromJson(Map<String, dynamic> json) => BillShortage(
        billId: json["id"].toString(),
        emp: json["emp"],
        kind: json["kind"].toString(),
        billItems: json["bill_items"],
        billTotal: json["bill_total"],
        billNotes: json["bill_notes"],
        billTimestamp: DateTime.parse(json["bill_timestamp"]),
      );

  Map<String, dynamic> toJson() => {
        "bill_id": billId,
        "emp_name": emp,
        "kind": kind,
        "bill_items": billItems,
        "bill_total": billTotal,
        "bill_notes": billNotes,
        "bill_timestamp": billTimestamp.toIso8601String(),
      };
}
