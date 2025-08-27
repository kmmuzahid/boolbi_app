import 'dart:convert';

class FaqModel {
  String? id;
  String? question;
  String? answer;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic v;

  FaqModel({
    this.id,
    this.question,
    this.answer,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory FaqModel.fromRawJson(String str) => FaqModel.fromJson(json.decode(str));

  factory FaqModel.fromJson(Map<String, dynamic> json) => FaqModel(
        id: json["_id"],
        question: json["question"],
        answer: json["answer"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );
}
