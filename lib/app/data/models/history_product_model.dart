import 'dart:convert';

class HistoryModel {
  String id;
  String seller_id;
  String name;
  int quantity;
  String sku;
  String image;
  int amount;
  int discount;
  int original_amount;
  HistoryModel({
    required this.id,
    required this.seller_id,
    required this.name,
    required this.quantity,
    required this.sku,
    required this.image,
    required this.amount,
    required this.discount,
    required this.original_amount,
  });

  HistoryModel copyWith({
    String? id,
    String? seller_id,
    String? name,
    int? quantity,
    String? sku,
    String? image,
    int? amount,
    int? discount,
    int? original_amount,
  }) {
    return HistoryModel(
      id: id ?? this.id,
      seller_id: seller_id ?? this.seller_id,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      sku: sku ?? this.sku,
      image: image ?? this.image,
      amount: amount ?? this.amount,
      discount: discount ?? this.discount,
      original_amount: original_amount ?? this.original_amount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'seller_id': seller_id,
      'name': name,
      'quantity': quantity,
      'sku': sku,
      'image': image,
      'amount': amount,
      'discount': discount,
      'original_amount': original_amount,
    };
  }

  factory HistoryModel.fromMap(Map<String, dynamic> map) {
    return HistoryModel(
      id: map['id'] ?? '',
      seller_id: map['seller_id'] ?? '',
      name: map['name'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
      sku: map['sku'] ?? '',
      image: map['image'] ?? '',
      amount: map['amount']?.toInt() ?? 0,
      discount: map['discount']?.toInt() ?? 0,
      original_amount: map['original_amount']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory HistoryModel.fromJson(String source) => HistoryModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'HistoryModel(id: $id, seller_id: $seller_id, name: $name, quantity: $quantity, sku: $sku, image: $image, amount: $amount, discount: $discount, original_amount: $original_amount)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is HistoryModel &&
      other.id == id &&
      other.seller_id == seller_id &&
      other.name == name &&
      other.quantity == quantity &&
      other.sku == sku &&
      other.image == image &&
      other.amount == amount &&
      other.discount == discount &&
      other.original_amount == original_amount;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      seller_id.hashCode ^
      name.hashCode ^
      quantity.hashCode ^
      sku.hashCode ^
      image.hashCode ^
      amount.hashCode ^
      discount.hashCode ^
      original_amount.hashCode;
  }
}
