import 'dart:convert';

class ProfileModel {
  AccountInformation? accountInformation;
  String? id;
  String? name;
  String? role;
  String? email;
  String? profile;
  bool? verified;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic v;
  String? contact;
  String? location;

  ProfileModel({
    this.accountInformation,
    this.id,
    this.name,
    this.role,
    this.email,
    this.profile,
    this.verified,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.contact,
    this.location,
  });

  factory ProfileModel.fromRawJson(String str) => ProfileModel.fromJson(json.decode(str));

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        accountInformation: json["accountInformation"] == null ? null : AccountInformation.fromJson(json["accountInformation"]),
        id: json["_id"],
        name: json["name"],
        role: json["role"],
        email: json["email"],
        profile: json["profile"],
        verified: json["verified"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        contact: json["contact"],
        location: json["location"],
      );
}

class AccountInformation {
  bool? status;

  AccountInformation({
    this.status,
  });

  factory AccountInformation.fromRawJson(String str) => AccountInformation.fromJson(json.decode(str));

  factory AccountInformation.fromJson(Map<String, dynamic> json) => AccountInformation(
        status: json["status"],
      );
}
