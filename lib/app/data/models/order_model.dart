import 'package:az_proof/app/data/models/coupon_model.dart';
import 'package:az_proof/app/data/models/customer_model.dart';
import 'package:az_proof/app/data/models/delivery_model.dart';
import 'package:az_proof/app/data/models/invoices_model.dart';
import 'package:az_proof/app/data/models/partner_model.dart';
import 'package:az_proof/app/data/models/payment_model.dart';
import 'package:az_proof/app/data/models/product_model.dart';
import 'package:az_proof/app/data/models/seller_model.dart';

class OrderModel {
  CustomerModel? customer;
  SellerModel? seller;
  PaymentModel? payment;
  DeliveryModel? delivery;
  List<ProductModel>? products;
  String? id;
  CouponModel? coupon;
  List<InvoicesModel>? invoices;
  String? OrderModel_seller_id;
  String? status;
  String? createdAt;
  PartnerModel? partner;
  String? updatedAt;

  OrderModel.fromJson(Map<String, dynamic> map) {
    customer =
        map['customer'] != null ? CustomerModel.fromMap(map['customer']) : null;
    seller = map['seller'] != null ? SellerModel.fromMap(map['seller']) : null;
    payment = map['payment'] != null ? PaymentModel.fromMap(map['payment']) : null;
    delivery =
        map['delivery'] != null ? DeliveryModel.fromMap(map['delivery']) : null;
    products = map['products'] != null
        ? List<ProductModel>.from(map['products']?.map((x) => ProductModel.fromMap(x)))
        : null;    
    id = map['_id'];
    coupon = map['coupon'] != null ? CouponModel.fromMap(map['coupon']) : null;
    invoices = map['invoices'] != null
        ? List<InvoicesModel>.from(map['invoices']?.map((x) => InvoicesModel.fromMap(x)))
        : null;
    OrderModel_seller_id = map['OrderModel_seller_id'];
    status = map['status'];
    createdAt = map['createdAt'];
    partner = map['partner'] != null ? PartnerModel.fromMap(map['partner']) : null;
    updatedAt = map['updatedAt'];
  }
}
