import 'dart:convert';

class CouponModel {
  String id;
  String code;
  String name;
  int discount;
  String type;
  CouponModel({
    required this.id,
    required this.code,
    required this.name,
    required this.discount,
    required this.type,
  });

  CouponModel copyWith({
    String? id,
    String? code,
    String? name,
    int? discount,
    String? type,
  }) {
    return CouponModel(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      discount: discount ?? this.discount,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'code': code,
      'name': name,
      'discount': discount,
      'type': type,
    };
  }

  factory CouponModel.fromMap(Map<String, dynamic> map) {
    return CouponModel(
      id: map['id'] ?? '',
      code: map['code'] ?? '',
      name: map['name'] ?? '',
      discount: map['discount']?.toInt() ?? 0,
      type: map['type'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CouponModel.fromJson(String source) => CouponModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CouponModel(id: $id, code: $code, name: $name, discount: $discount, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CouponModel &&
      other.id == id &&
      other.code == code &&
      other.name == name &&
      other.discount == discount &&
      other.type == type;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      code.hashCode ^
      name.hashCode ^
      discount.hashCode ^
      type.hashCode;
  }
}
