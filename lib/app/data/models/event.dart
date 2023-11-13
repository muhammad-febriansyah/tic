class Event {
  Event({
    required this.id,
    required this.judul,
    required this.mulai,
    required this.selesai,
    required this.ket,
    required this.lokasi,
    required this.image,
    required this.lat,
    required this.lng,
    required this.status,
    required this.views,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
  });
  late final int id;
  late final String judul;
  late final String mulai;
  late final String selesai;
  late final String ket;
  late final String lokasi;
  late final String image;
  late final String lat;
  late final String lng;
  late final String status;
  late final String views;
  late final String userId;
  late final String createdAt;
  late final String updatedAt;
  late final User user;

  Event.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    judul = json['judul'];
    mulai = json['mulai'];
    selesai = json['selesai'];
    ket = json['ket'];
    lokasi = json['lokasi'];
    image = json['image'];
    lat = json['lat'];
    lng = json['lng'];
    status = json['status'];
    views = json['views'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['judul'] = judul;
    _data['mulai'] = mulai;
    _data['selesai'] = selesai;
    _data['ket'] = ket;
    _data['lokasi'] = lokasi;
    _data['image'] = image;
    _data['lat'] = lat;
    _data['lng'] = lng;
    _data['status'] = status;
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
