class DepartmentModel {
  int id;
  String name;
  String numOfStudents;
  String image;
  String timeTable;
  String mangerId;
  String mangerName;

  DepartmentModel({
    required this.id,
    required this.name,
    required this.numOfStudents,
    required this.image,
    required this.timeTable,
    required this.mangerId,
    required this.mangerName,
  });

  factory DepartmentModel.fromJson(Map<String, dynamic> json) =>
      DepartmentModel(
        id: json["id"],
        name: json["name"],
        numOfStudents: json["num_of_students"],
        image: json["image"],
        timeTable: json["time_table"],
        mangerId: json["manger_id"],
        mangerName: json["manger_name"],
        //
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "num_of_students": numOfStudents,
        "image": image,
        "time_table": timeTable,
        "manger_id": mangerId,
        "manger_name": mangerName,
      };
}
