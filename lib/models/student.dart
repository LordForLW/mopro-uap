import 'dart:convert';

StudentModel studentFromJson(String str) =>
    StudentModel.fromJson(json.decode(str));

String studentToJson(StudentModel data) => json.encode(data.toJson());

class StudentModel {
  int id;
  String npm;
  String name;
  DateTime createdAt;
  DateTime updatedAt;

  StudentModel({
    required this.id,
    required this.npm,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
        id: json["id"],
        npm: json["npm"],
        name: json["name"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "npm": npm,
        "name": name,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
