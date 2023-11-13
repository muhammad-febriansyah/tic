// To parse this JSON data, do
//
//     final slider = sliderFromJson(jsonString);

import 'dart:convert';

Slider sliderFromJson(String str) => Slider.fromJson(json.decode(str));

String sliderToJson(Slider data) => json.encode(data.toJson());

class Slider {
  final int id;
  final String judul;
  final String gambar;
  final DateTime createdAt;
  final DateTime updatedAt;

  Slider({
    required this.id,
    required this.judul,
    required this.gambar,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Slider.fromJson(Map<String, dynamic> json) => Slider(
        id: json["id"],
        judul: json["judul"],
        gambar: json["gambar"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "judul": judul,
        "gambar": gambar,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
