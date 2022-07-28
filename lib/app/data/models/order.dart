import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:az_proof/app/data/models/coupon.dart';
import 'package:az_proof/app/data/models/custumer.dart';
import 'package:az_proof/app/data/models/delivery.dart';
import 'package:az_proof/app/data/models/invoices.dart';
import 'package:az_proof/app/data/models/partner.dart';
import 'package:az_proof/app/data/models/payment.dart';
import 'package:az_proof/app/data/models/product.dart';
import 'package:az_proof/app/data/models/seller.dart';

class Order {
  Custumer custumer;
  Seller seller;
  Payment payment;
  Delivery delivery;
  List<Product> product;
  String id;
  Coupon coupon;
  List<Invoices> invoices;
  String order_seller_id;
  String status;
  String createdAt;
  Partner partner;
  String updatedAt;
  Order({
    required this.custumer,
    required this.seller,
    required this.payment,
    required this.delivery,
    required this.product,
    required this.id,
    required this.coupon,
    required this.invoices,
    required this.order_seller_id,
    required this.status,
    required this.createdAt,
    required this.partner,
    required this.updatedAt,
  });

  Order copyWith({
    Custumer? custumer,
    Seller? seller,
    Payment? payment,
    Delivery? delivery,
    List<Product>? product,
    String? id,
    Coupon? coupon,
    List<Invoices>? invoices,
    String? order_seller_id,
    String? status,
    String? createdAt,
    Partner? partner,
    String? updatedAt,
  }) {
    return Order(
      custumer: custumer ?? this.custumer,
      seller: seller ?? this.seller,
      payment: payment ?? this.payment,
      delivery: delivery ?? this.delivery,
      product: product ?? this.product,
      id: id ?? this.id,
      coupon: coupon ?? this.coupon,
      invoices: invoices ?? this.invoices,
      order_seller_id: order_seller_id ?? this.order_seller_id,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      partner: partner ?? this.partner,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'custumer': custumer.toMap(),
      'seller': seller.toMap(),
      'payment': payment.toMap(),
      'delivery': delivery.toMap(),
      'product': product.map((x) => x.toMap()).toList(),
      'id': id,
      'coupon': coupon.toMap(),
      'invoices': invoices.map((x) => x.toMap()).toList(),
      'order_seller_id': order_seller_id,
      'status': status,
      'createdAt': createdAt,
      'partner': partner.toMap(),
      'updatedAt': updatedAt,
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      custumer: Custumer.fromMap(map['custumer']),
      seller: Seller.fromMap(map['seller']),
      payment: Payment.fromMap(map['payment']),
      delivery: Delivery.fromMap(map['delivery']),
      product: List<Product>.from(map['product']?.map((x) => Product.fromMap(x))),
      id: map['id'] ?? '',
      coupon: Coupon.fromMap(map['coupon']),
      invoices: List<Invoices>.from(map['invoices']?.map((x) => Invoices.fromMap(x))),
      order_seller_id: map['order_seller_id'] ?? '',
      status: map['status'] ?? '',
      createdAt: map['createdAt'] ?? '',
      partner: Partner.fromMap(map['partner']),
      updatedAt: map['updatedAt'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) => Order.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Order(custumer: $custumer, seller: $seller, payment: $payment, delivery: $delivery, product: $product, id: $id, coupon: $coupon, invoices: $invoices, order_seller_id: $order_seller_id, status: $status, createdAt: $createdAt, partner: $partner, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Order &&
      other.custumer == custumer &&
      other.seller == seller &&
      other.payment == payment &&
      other.delivery == delivery &&
      listEquals(other.product, product) &&
      other.id == id &&
      other.coupon == coupon &&
      listEquals(other.invoices, invoices) &&
      other.order_seller_id == order_seller_id &&
      other.status == status &&
      other.createdAt == createdAt &&
      other.partner == partner &&
      other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return custumer.hashCode ^
      seller.hashCode ^
      payment.hashCode ^
      delivery.hashCode ^
      product.hashCode ^
      id.hashCode ^
      coupon.hashCode ^
      invoices.hashCode ^
      order_seller_id.hashCode ^
      status.hashCode ^
      createdAt.hashCode ^
      partner.hashCode ^
      updatedAt.hashCode;
  }
}
