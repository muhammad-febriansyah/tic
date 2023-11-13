class MarketModel {
  MarketModel({
    required this.id,
    required this.pasar,
    required this.jenis,
    required this.lokasi,
    required this.lat,
    required this.lng,
    required this.desc,
    required this.image,
    required this.userId,
    required this.views,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
  });
  late final int id;
  late final String pasar;
  late final String jenis;
  late final String lokasi;
  late final String lat;
  late final String lng;
  late final String desc;
  late final String image;
  late final String userId;
  late final String views;
  late final String createdAt;
  late final String updatedAt;
  late final User user;

  MarketModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pasar = json['pasar'];
    jenis = json['jenis'];
    lokasi = json['lokasi'];
    lat = json['lat'];
    lng = json['lng'];
    desc = json['desc'];
    image = json['image'];
    userId = json['user_id'];
    views = json['views'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['pasar'] = pasar;
    _data['jenis'] = jenis;
    _data['lokasi'] = lokasi;
    _data['lat'] = lat;
    _data['lng'] = lng;
    _data['desc'] = desc;
    _data['image'] = image;
    _data['user_id'] = userId;
    _data['views'] = views;
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
