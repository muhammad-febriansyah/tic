class Akomodasi {
  Akomodasi({
    required this.id,
    required this.nama,
    required this.jenisAkomodasiId,
    required this.alamat,
    required this.lat,
    required this.lng,
    required this.image,
    required this.desc,
    required this.userId,
    required this.views,
    required this.createdAt,
    required this.updatedAt,
    required this.jenisAkomodasi,
    required this.user,
  });
  late final int id;
  late final String nama;
  late final String jenisAkomodasiId;
  late final String alamat;
  late final String lat;
  late final String lng;
  late final String image;
  late final String desc;
  late final String userId;
  late final String views;
  late final String createdAt;
  late final String updatedAt;
  late final JenisAkomodasi jenisAkomodasi;
  late final User user;

  Akomodasi.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    jenisAkomodasiId = json['jenis_akomodasi_id'];
    alamat = json['alamat'];
    lat = json['lat'];
    lng = json['lng'];
    image = json['image'];
    desc = json['desc'];
    userId = json['user_id'];
    views = json['views'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    jenisAkomodasi = JenisAkomodasi.fromJson(json['jenis_akomodasi']);
    user = User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['nama'] = nama;
    _data['jenis_akomodasi_id'] = jenisAkomodasiId;
    _data['alamat'] = alamat;
    _data['lat'] = lat;
    _data['lng'] = lng;
    _data['image'] = image;
    _data['desc'] = desc;
    _data['user_id'] = userId;
    _data['views'] = views;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['jenis_akomodasi'] = jenisAkomodasi.toJson();
    _data['user'] = user.toJson();
    return _data;
  }
}

class JenisAkomodasi {
  JenisAkomodasi({
    required this.id,
    required this.jenis,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String jenis;
  late final String createdAt;
  late final String updatedAt;

  JenisAkomodasi.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    jenis = json['jenis'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['jenis'] = jenis;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
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
