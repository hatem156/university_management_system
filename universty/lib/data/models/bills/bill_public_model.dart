// To parse this JSON data, do
//
//     final billPublicModel = billPublicModelFromJson(jsonString);

import 'dart:convert';

List<BillPublicModel> billPublicModelFromJson(String str) =>
    List<BillPublicModel>.from(
        json.decode(str).map((x) => BillPublicModel.fromJson(x)));

String billPublicModelToJson(List<BillPublicModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BillPublicModel {
  int id;
  String empId;
  String empName;
  int kind;
  int billItems;
  String billDuration;
  String billTotal;
  String billDiscount;
  String billAfterDiscount;
  String billPaid;
  String billUnpaid;
  String billDelivry;
  String billInstallation;
  String billDareba;
  String billUpstream;
  String paymentMethod;
  String fullTotal;
  String customerId;
  String customerName;
  String customerPhone;
  String customerAccount;
  String billNotes;
  String refBillId;
  String refKind;
  int refState;
  DateTime billTimestamp;

  BillPublicModel({
    required this.id,
    required this.empId,
    required this.empName,
    required this.kind,
    required this.billItems,
    required this.billDuration,
    required this.billTotal,
    required this.billDiscount,
    required this.billAfterDiscount,
    required this.billPaid,
    required this.billUnpaid,
    required this.billDelivry,
    required this.billInstallation,
    required this.billDareba,
    required this.billUpstream,
    required this.paymentMethod,
    required this.fullTotal,
    required this.customerId,
    required this.customerName,
    required this.customerPhone,
    required this.customerAccount,
    required this.billNotes,
    required this.refBillId,
    required this.refKind,
    required this.refState,
    required this.billTimestamp,
  });

  factory BillPublicModel.fromJson(Map<String, dynamic> json) =>
      BillPublicModel(
        id: json["id"],
        empId: json["emp_id"],
        empName: json["emp_name"],
        kind: json["kind"],
        billItems: json["bill_items"],
        billDuration: json["bill_duration"],
        billTotal: json["bill_total"],
        billDiscount: json["bill_discount"],
        billAfterDiscount: json["bill_after_discount"],
        billPaid: json["bill_paid"],
        billUnpaid: json["bill_unpaid"],
        billDelivry: json["bill_delivry"],
        billInstallation: json["bill_installation"],
        billDareba: json["bill_dareba"],
        billUpstream: json["bill_upstream"],
        paymentMethod: json["payment_method"],
        fullTotal: json["full_total"],
        customerId: json["customer_id"],
        customerName: json["customer_name"],
        customerPhone: json["customer_phone"],
        customerAccount: json["customer_account"],
        billNotes: json["bill_notes"],
        refBillId: json["ref_bill_id"],
        refKind: json["ref_kind"],
        refState: json["ref_state"],
        billTimestamp: DateTime.parse(json["bill_timestamp"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "emp_id": empId,
        "emp_name": empName,
        "kind": kind,
        "bill_items": billItems,
        "bill_duration": billDuration,
        "bill_total": billTotal,
        "bill_discount": billDiscount,
        "bill_after_discount": billAfterDiscount,
        "bill_paid": billPaid,
        "bill_unpaid": billUnpaid,
        "bill_delivry": billDelivry,
        "bill_installation": billInstallation,
        "bill_dareba": billDareba,
        "bill_upstream": billUpstream,
        "payment_method": paymentMethod,
        "full_total": fullTotal,
        "customer_id": customerId,
        "customer_name": customerName,
        "customer_phone": customerPhone,
        "customer_account": customerAccount,
        "bill_notes": billNotes,
        "ref_bill_id": refBillId,
        "ref_kind": refKind,
        "ref_state": refState,
        "bill_timestamp": billTimestamp.toIso8601String(),
      };
}
