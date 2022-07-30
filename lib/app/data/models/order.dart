import 'package:az_proof/app/data/models/coupon.dart';
import 'package:az_proof/app/data/models/custumer.dart';
import 'package:az_proof/app/data/models/delivery.dart';
import 'package:az_proof/app/data/models/invoices.dart';
import 'package:az_proof/app/data/models/partner.dart';
import 'package:az_proof/app/data/models/payment.dart';
import 'package:az_proof/app/data/models/product.dart';
import 'package:az_proof/app/data/models/seller.dart';

class Order {
  Custumer? custumer;
  Seller? seller;
  Payment? payment;
  Delivery? delivery;
  List<Product>? products;
  String? id;
  Coupon? coupon;
  List<Invoices>? invoices;
  String? order_seller_id;
  String? status;
  String? createdAt;
  Partner? partner;
  String? updatedAt;

  Order.fromJson(Map<String, dynamic> map) {
    custumer =
        map['custumer'] != null ? Custumer.fromMap(map['custumer']) : null;
    seller = map['seller'] != null ? Seller.fromMap(map['seller']) : null;
    payment = map['payment'] != null ? Payment.fromMap(map['payment']) : null;
    delivery =
        map['delivery'] != null ? Delivery.fromMap(map['delivery']) : null;
    products = map['products'] != null
        ? List<Product>.from(map['products']?.map((x) => Product.fromMap(x)))
        : null;    
    id = map['id'];
    coupon = map['coupon'] != null ? Coupon.fromMap(map['coupon']) : null;
    invoices = map['invoices'] != null
        ? List<Invoices>.from(map['invoices']?.map((x) => Invoices.fromMap(x)))
        : null;
    order_seller_id = map['order_seller_id'];
    status = map['status'];
    createdAt = map['createdAt'];
    partner = map['partner'] != null ? Partner.fromMap(map['partner']) : null;
    updatedAt = map['updatedAt'];
  }
}
