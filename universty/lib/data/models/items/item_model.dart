// To parse this JSON data, do
//
//     final item = itemFromJson(jsonString);

import 'dart:convert';

List<Item> itemFromJson(String str) =>
    List<Item>.from(json.decode(str).map((x) => Item.fromJson(x)));

String itemToJson(List<Item> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Item {
  int id;
  String itemName;
  String itemNum;
  String itemSup;
  String itemCat;
  String itemPriceIn;
  String itemPriceOut;
  String itemCount;
  String billId;
  String billKind;
  String itemQuant;
  String itemWanted;
  String itemAvilable;
  String itemMin;
  String itemMax;
  String image;
  String kind;
  String ingredientsNumber;
  DateTime itemTime;
  String itemSize;
  String itemColor;
  String itemNotes;
  String itemWat;
  String itemSet;
  String itemLight;
  int itemActive;
  String itemKgm;
  String itemEmp;

  Item({
    required this.id,
    required this.itemName,
    required this.itemNum,
    required this.itemSup,
    required this.itemCat,
    required this.itemPriceIn,
    required this.itemPriceOut,
    required this.itemCount,
    required this.billId,
    required this.billKind,
    required this.itemQuant,
    required this.itemWanted,
    required this.itemAvilable,
    required this.itemMin,
    required this.itemMax,
    required this.image,
    required this.kind,
    required this.ingredientsNumber,
    required this.itemTime,
    required this.itemSize,
    required this.itemColor,
    required this.itemNotes,
    required this.itemWat,
    required this.itemSet,
    required this.itemLight,
    required this.itemActive,
    required this.itemKgm,
    required this.itemEmp,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        itemName: json["item_name"],
        itemNum: json["item_num"],
        itemSup: json["item_sup"],
        itemCat: json["item_cat"],
        itemPriceIn: json["item_price_in"],
        itemPriceOut: json["item_price_out"],
        itemCount: json["item_count"],
        billId: json["bill_id"],
        billKind: json["bill_kind"],
        itemQuant: json["item_quant"],
        itemWanted: json["item_wanted"],
        itemAvilable: json["item_avilable"],
        itemMin: json["item_min"],
        itemMax: json["item_max"],
        image: json["image"],
        kind: json["kind"].toString(),
        ingredientsNumber: json["ingredients_number"],
        itemTime: DateTime.parse(json["item_time"]),
        itemSize: json["item_size"],
        itemColor: json["item_color"],
        itemNotes: json["item_notes"],
        itemWat: json["item_wat"],
        itemSet: json["item_set"],
        itemLight: json["item_light"],
        itemActive: json["item_active"],
        itemKgm: json["item_kgm"],
        itemEmp: json["item_emp"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "item_name": itemName,
        "item_num": itemNum,
        "item_sup": itemSup,
        "item_cat": itemCat,
        "item_price_in": itemPriceIn,
        "item_price_out": itemPriceOut,
        "item_count": itemCount,
        "bill_id": billId,
        "bill_kind": billKind,
        "item_quant": itemQuant,
        "item_wanted": itemWanted,
        "item_avilable": itemAvilable,
        "item_min": itemMin,
        "item_max": itemMax,
        "image": image,
        "kind": kind,
        "ingredients_number": ingredientsNumber,
        "item_time": itemTime.toIso8601String(),
        "item_size": itemSize,
        "item_color": itemColor,
        "item_notes": itemNotes,
        "item_wat": itemWat,
        "item_set": itemSet,
        "item_light": itemLight,
        "item_active": itemActive,
        "item_kgm": itemKgm,
        "item_emp": itemEmp,
      };
}
