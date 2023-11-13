// To parse this JSON data, do
//
//     final setting = settingFromJson(jsonString);

import 'dart:convert';

Setting settingFromJson(String str) => Setting.fromJson(json.decode(str));

String settingToJson(Setting data) => json.encode(data.toJson());

class Setting {
  final int id;
  final String web;
  final String keyword;
  final String logo;
  final String alamat;
  final String telp;
  final String email;
  final String yt;
  final String ig;
  final String lat;
  final String lng;
  final String createdAt;
  final DateTime updatedAt;

  Setting({
    required this.id,
    required this.web,
    required this.keyword,
    required this.logo,
    required this.alamat,
    required this.telp,
    required this.email,
    required this.yt,
    required this.ig,
    required this.lat,
    required this.lng,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Setting.fromJson(Map<String, dynamic> json) => Setting(
        id: json["id"],
        web: json["web"],
        keyword: json["keyword"],
        logo: json["logo"],
        alamat: json["alamat"],
        telp: json["telp"],
        email: json["email"],
        yt: json["yt"],
        ig: json["ig"],
        lat: json["lat"],
        lng: json["lng"],
        createdAt: json["created_at"],
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "web": web,
        "keyword": keyword,
        "logo": logo,
        "alamat": alamat,
        "telp": telp,
        "email": email,
        "yt": yt,
        "ig": ig,
        "lat": lat,
        "lng": lng,
        "created_at": createdAt,
        "updated_at": updatedAt.toIso8601String(),
      };
}
