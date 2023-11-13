class AgenModel {
  AgenModel({
    required this.id,
    required this.agen,
    required this.lokasi,
    required this.harga,
    required this.telp,
    required this.url,
    required this.lat,
    required this.lng,
    required this.desc,
    required this.image,
    required this.views,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
  });
  late final int id;
  late final String agen;
  late final String lokasi;
  late final String harga;
  late final String telp;
  late final String url;
  late final String lat;
  late final String lng;
  late final String desc;
  late final String image;
  late final String views;
  late final String userId;
  late final String createdAt;
  late final String updatedAt;
  late final User user;

  AgenModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    agen = json['agen'];
    lokasi = json['lokasi'];
    harga = json['harga'];
    telp = json['telp'];
    url = json['url'];
    lat = json['lat'];
    lng = json['lng'];
    desc = json['desc'];
    image = json['image'];
    views = json['views'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['agen'] = agen;
    _data['lokasi'] = lokasi;
    _data['harga'] = harga;
    _data['telp'] = telp;
    _data['url'] = url;
    _data['lat'] = lat;
    _data['lng'] = lng;
    _data['desc'] = desc;
    _data['image'] = image;
    _data['views'] = views;
    _data['user_id'] = userId;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['user'] = user.toJson();
    return _data;
  }
}

class User {
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.telp,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String name;
  late final String email;
  late final String telp;
  late final String createdAt;
  late final String updatedAt;

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    telp = json['telp'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['email'] = email;
    _data['telp'] = telp;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}
