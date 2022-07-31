// import 'dart:convert';

// import 'package:flutter/foundation.dart';

import 'package:az_proof/app/data/models/order_model.dart';

class ResponseDashboardModel {
  double? orders_total;
  int? orders_count;
  double? sales_total;
  int? sales_count;
  List<OrderModel>? orders;
  double? average_ticket;
  bool? has_more;
  int? limit;
  int? total_pages;
  int? page;
  int? total;
  ResponseDashboardModel({
    this.orders_total,
    this.orders_count,
    this.sales_total,
    this.sales_count,
    this.orders,
    this.average_ticket,
    this.has_more,
    this.limit,
    this.total_pages,
    this.page,
    this.total,
  });  

  ResponseDashboardModel.fromJson(Map<String, dynamic> json) {
    orders_total = json['orders_total'];
    orders_count = json['orders_count'];
    sales_total = json['sales_total'];
    sales_count = json['sales_count'];
    orders = List<OrderModel>.from(json['orders']?.map((x) => OrderModel.fromJson(x)));
    average_ticket = json['average_ticket'];
    has_more = json['has_more'];
    limit = json['limit'];
    total_pages = json['total_pages'];
    page = json['page'];
    total = json['total'];
  }

  
}
