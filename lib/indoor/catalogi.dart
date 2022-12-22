// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatalogModelI {
  static List<Itemi> items = [];
}

class Itemi {
  final int id;
  final String name;
  final String origin;
  final String desc;
  final String water;
  final String temperature;
  final String soil;
  final String light;
  final String image;

  Itemi(this.id, this.name, this.origin, this.desc, this.water, this.light,
      this.temperature, this.soil, this.image);

  Itemi copyWith({
    int? id,
    String? name,
    String? desc,
    String? water,
    String? light,
    String? temperature,
    String? soil,
    String? image,
  }) {
    return Itemi(
      id ?? this.id,
      name ?? this.name,
      origin,
      desc ?? this.desc,
      water ?? this.water,
      light ?? this.light,
      temperature ?? this.temperature,
      soil ?? this.soil,
      image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'origin': origin,
      'desc': desc,
      'water': water,
      'light': light,
      'temperature': temperature,
      'soil': soil,
      'image': image,
    };
  }

  factory Itemi.fromMap(Map<String, dynamic> map) {
    return Itemi(
      map['id'] as int,
      map['name'] as String,
      map['origin'] as String,
      map['desc'] as String,
      map['water'] as String,
      map['light'] as String,
      map['temperature'] as String,
      map['soil'] as String,
      map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Itemi.fromJson(String source) =>
      Itemi.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name,origin: $origin, desc: $desc, water: $water, light: $light,temperature: $temperature,soil:$soil, image: $image)';
  }

  @override
  bool operator ==(covariant Itemi other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.origin == origin &&
        other.desc == desc &&
        other.water == water &&
        other.light == light &&
        other.temperature == temperature &&
        other.soil == soil &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        origin.hashCode ^
        desc.hashCode ^
        water.hashCode ^
        light.hashCode ^
        temperature.hashCode ^
        soil.hashCode ^
        image.hashCode;
  }
}
