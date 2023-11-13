class News {
  News({
    required this.id,
    required this.title,
    required this.userId,
    required this.categoryId,
    required this.body,
    required this.views,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
    required this.category,
  });
  late final int id;
  late final String title;
  late final String userId;
  late final String categoryId;
  late final String body;
  late final String views;
  late final String image;
  late final String createdAt;
  late final String updatedAt;
  late final User user;
  late final Category category;

  News.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    userId = json['user_id'];
    categoryId = json['category_id'];
    body = json['body'];
    views = json['views'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = User.fromJson(json['user']);
    category = Category.fromJson(json['category']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['user_id'] = userId;
    _data['category_id'] = categoryId;
    _data['body'] = body;
    _data['views'] = views;
    _data['image'] = image;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['user'] = user.toJson();
    _data['category'] = category.toJson();
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

class Category {
  Category({
    required this.id,
    required this.title,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String title;
  late final String createdAt;
  late final String updatedAt;

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}
