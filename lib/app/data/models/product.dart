import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:az_proof/app/data/models/coupon.dart';
import 'package:az_proof/app/data/models/history.dart';
import 'package:az_proof/app/data/models/promotion.dart';

class Product {
  String? id;
  String? seller_id;
  String? name;
  int? quantity;
  String? sku;
  String? image;
  String? status;
  int? price;
  int? discount;
  int? original_price;
  bool? replacement_coupon;
  Coupon? coupon;
  Promotion? promotion;
  int? amount;
  List<History>? history;
  bool? active;
  Product({
    this.id,
    this.seller_id,
    this.name,
    this.quantity,
    this.sku,
    this.image,
    this.status,
    this.price,
    this.discount,
    this.original_price,
    this.replacement_coupon,
    this.coupon,
    this.promotion,
    this.amount,
    this.history,
    this.active,
  });

  Product copyWith({
    String? id,
    String? seller_id,
    String? name,
    int? quantity,
    String? sku,
    String? image,
    String? status,
    int? price,
    int? discount,
    int? original_price,
    bool? replacement_coupon,
    Coupon? coupon,
    Promotion? promotion,
    int? amount,
    List<History>? history,
    bool? active,
  }) {
    return Product(
      id: id ?? this.id,
      seller_id: seller_id ?? this.seller_id,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      sku: sku ?? this.sku,
      image: image ?? this.image,
      status: status ?? this.status,
      price: price ?? this.price,
      discount: discount ?? this.discount,
      original_price: original_price ?? this.original_price,
      replacement_coupon: replacement_coupon ?? this.replacement_coupon,
      coupon: coupon ?? this.coupon,
      promotion: promotion ?? this.promotion,
      amount: amount ?? this.amount,
      history: history ?? this.history,
      active: active ?? this.active,
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
      'status': status,
      'price': price,
      'discount': discount,
      'original_price': original_price,
      'replacement_coupon': replacement_coupon,
      'coupon': coupon?.toMap(),
      'promotion': promotion?.toMap(),
      'amount': amount,
      'history': history?.map((x) => x.toMap()).toList(),
      'active': active,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      seller_id: map['seller_id'],
      name: map['name'],
      quantity: map['quantity']?.toInt(),
      sku: map['sku'],
      image: map['image'],
      status: map['status'],
      price: map['price']?.toInt(),
      discount: map['discount']?.toInt(),
      original_price: map['original_price']?.toInt(),
      replacement_coupon: map['replacement_coupon'],
      coupon: map['coupon'] != null ? Coupon.fromMap(map['coupon']) : null,
      promotion: map['promotion'] != null ? Promotion.fromMap(map['promotion']) : null,
      amount: map['amount']?.toInt(),
      history: map['history'] != null ? List<History>.from(map['history']?.map((x) => History.fromMap(x))) : null,
      active: map['active'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(id: $id, seller_id: $seller_id, name: $name, quantity: $quantity, sku: $sku, image: $image, status: $status, price: $price, discount: $discount, original_price: $original_price, replacement_coupon: $replacement_coupon, coupon: $coupon, promotion: $promotion, amount: $amount, history: $history, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Product &&
      other.id == id &&
      other.seller_id == seller_id &&
      other.name == name &&
      other.quantity == quantity &&
      other.sku == sku &&
      other.image == image &&
      other.status == status &&
      other.price == price &&
      other.discount == discount &&
      other.original_price == original_price &&
      other.replacement_coupon == replacement_coupon &&
      other.coupon == coupon &&
      other.promotion == promotion &&
      other.amount == amount &&
      listEquals(other.history, history) &&
      other.active == active;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      seller_id.hashCode ^
      name.hashCode ^
      quantity.hashCode ^
      sku.hashCode ^
      image.hashCode ^
      status.hashCode ^
      price.hashCode ^
      discount.hashCode ^
      original_price.hashCode ^
      replacement_coupon.hashCode ^
      coupon.hashCode ^
      promotion.hashCode ^
      amount.hashCode ^
      history.hashCode ^
      active.hashCode;
  }
}
