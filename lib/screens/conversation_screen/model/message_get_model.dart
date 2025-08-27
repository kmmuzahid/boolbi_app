class MessageGetModel {
  String? sId;
  ReceiverId? receiverId;
  String? message;
  bool? isRead;
  String? chatId;
  String? image;
  String? messageType;
  String? createdAt;
  String? updatedAt;
  dynamic iV;

  MessageGetModel({this.sId, this.receiverId, this.message, this.isRead, this.chatId, this.image, this.messageType, this.createdAt, this.updatedAt, this.iV});

  MessageGetModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    receiverId = json['receiverId'] != null ? ReceiverId.fromJson(json['receiverId']) : null;
    message = json['message'];
    isRead = json['isRead'];
    chatId = json['chatId'];
    image = json['image'];
    messageType = json['messageType'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }
}

class ReceiverId {
  String? sId;
  String? name;
  String? role;

  ReceiverId({this.sId, this.name, this.role});

  ReceiverId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    role = json['role'];
  }
}
