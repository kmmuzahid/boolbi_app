import 'dart:convert';

class NotificationModel {
  String? id;
  String? text;
  String? receiver;
  String? referenceId;
  String? screen;
  bool? read;
  String? createdAt;
  String? updatedAt;
  dynamic v;

  NotificationModel({
    this.id,
    this.text,
    this.receiver,
    this.referenceId,
    this.screen,
    this.read,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory NotificationModel.fromRawJson(String str) => NotificationModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
        id: json["_id"],
        text: json["text"],
        receiver: json["receiver"],
        referenceId: json["referenceId"],
        screen: json["screen"],
        read: json["read"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "text": text,
        "receiver": receiver,
        "referenceId": referenceId,
        "screen": screen,
        "read": read,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "__v": v,
      };
}
