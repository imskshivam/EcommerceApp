import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Categories {
  final String name;
  final String images;
  Categories({
    required this.name,
    required this.images,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'images': images,
    };
  }

  factory Categories.fromMap(Map<String, dynamic> map) {
    return Categories(
      name: map['name'] as String,
      images: map['images'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Categories.fromJson(String source) =>
      Categories.fromMap(json.decode(source) as Map<String, dynamic>);
}
