import 'dart:convert';

class NotificationModel {
    String? id;
    String? userId;
    String? message;
    String? type;
    String? status;
    bool? isRead;
    String? createdAt;
    String? updatedAt;

    NotificationModel({
        this.id,
        this.userId,
        this.message,
        this.type,
        this.status,
        this.isRead,
        this.createdAt,
        this.updatedAt,
    });

    factory NotificationModel.fromRawJson(String str) => NotificationModel.fromJson(json.decode(str));

    factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
        id: json["_id"],
        userId: json["userId"],
        message: json["message"],
        type: json["type"],
        status: json["status"],
        isRead: json["isRead"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"] ,
    );

   
}
