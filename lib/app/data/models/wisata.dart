class Wisata {
  Wisata({
    required this.id,
    required this.image,
    required this.nama,
    required this.desc,
    required this.jenisUsaha,
    required this.lokasi,
    required this.views,
    required this.lat,
    required this.lng,
    required this.wa,
    required this.tarif,
    required this.kecamatanId,
    required this.kabupatenId,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
    required this.kecamatan,
    required this.kabupaten,
    required this.user,
  });
  late final int id;
  late final String image;
  late final String nama;
  late final String desc;
  late final String jenisUsaha;
  late final String lokasi;
  late final String views;
  late final String lat;
  late final String lng;
  late final String wa;
  late final String tarif;
  late final String kecamatanId;
  late final String kabupatenId;
  late final String userId;
  late final String createdAt;
  late final String updatedAt;
  late final Kecamatan kecamatan;
  late final Kabupaten kabupaten;
  late final User user;

  Wisata.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    nama = json['nama'];
    desc = json['desc'];
    jenisUsaha = json['jenis_usaha'];
    lokasi = json['lokasi'];
    views = json['views'];
    lat = json['lat'];
    lng = json['lng'];
    wa = json['wa'];
    tarif = json['tarif'];
    kecamatanId = json['kecamatan_id'];
    kabupatenId = json['kabupaten_id'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    kecamatan = Kecamatan.fromJson(json['kecamatan']);
    kabupaten = Kabupaten.fromJson(json['kabupaten']);
    user = User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['image'] = image;
    _data['nama'] = nama;
    _data['desc'] = desc;
    _data['jenis_usaha'] = jenisUsaha;
    _data['lokasi'] = lokasi;
    _data['views'] = views;
    _data['lat'] = lat;
    _data['lng'] = lng;
    _data['wa'] = wa;
    _data['tarif'] = tarif;
    _data['kecamatan_id'] = kecamatanId;
    _data['kabupaten_id'] = kabupatenId;
    _data['user_id'] = userId;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['kecamatan'] = kecamatan.toJson();
    _data['kabupaten'] = kabupaten.toJson();
    _data['user'] = user.toJson();
    return _data;
  }
}

class Kecamatan {
  Kecamatan({
    required this.id,
    required this.kecamatan,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String kecamatan;
  late final String createdAt;
  late final String updatedAt;

  Kecamatan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    kecamatan = json['kecamatan'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['kecamatan'] = kecamatan;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}

class Kabupaten {
  Kabupaten({
    required this.id,
    required this.kabupaten,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String kabupaten;
  late final String createdAt;
  late final String updatedAt;

  Kabupaten.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    kabupaten = json['kabupaten'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['kabupaten'] = kabupaten;
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
