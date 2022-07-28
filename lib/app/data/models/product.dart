import 'dart:convert';

class Product {
  String id;
  String seller_id;
  String name;
  int quantity;
  String sku;
  String image;
  String status;
  int price;
  int discount;
  int original_price;
  bool replacement_coupon;
  Product({
    required this.id,
    required this.seller_id,
    required this.name,
    required this.quantity,
    required this.sku,
    required this.image,
    required this.status,
    required this.price,
    required this.discount,
    required this.original_price,
    required this.replacement_coupon,
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
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] ?? '',
      seller_id: map['seller_id'] ?? '',
      name: map['name'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
      sku: map['sku'] ?? '',
      image: map['image'] ?? '',
      status: map['status'] ?? '',
      price: map['price']?.toInt() ?? 0,
      discount: map['discount']?.toInt() ?? 0,
      original_price: map['original_price']?.toInt() ?? 0,
      replacement_coupon: map['replacement_coupon'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(id: $id, seller_id: $seller_id, name: $name, quantity: $quantity, sku: $sku, image: $image, status: $status, price: $price, discount: $discount, original_price: $original_price, replacement_coupon: $replacement_coupon)';
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
      other.replacement_coupon == replacement_coupon;
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
      replacement_coupon.hashCode;
  }
}
