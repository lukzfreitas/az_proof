import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:az_proof/app/data/models/address.dart';

class Delivery {
  List<Address>? history;
  Address? address;
  String? status;
  String? type;
  String track_id;
  String? track_url;
  int? amount;
  String? delivery_forecast;
  Delivery({
    this.history,
    this.address,
    this.status,
    this.type,
    required this.track_id,
    this.track_url,
    this.amount,
    this.delivery_forecast,
  });
  

  Delivery copyWith({
    List<Address>? history,
    Address? address,
    String? status,
    String? type,
    String? track_id,
    String? track_url,
    int? amount,
    String? delivery_forecast,
  }) {
    return Delivery(
      history: history ?? this.history,
      address: address ?? this.address,
      status: status ?? this.status,
      type: type ?? this.type,
      track_id: track_id ?? this.track_id,
      track_url: track_url ?? this.track_url,
      amount: amount ?? this.amount,
      delivery_forecast: delivery_forecast ?? this.delivery_forecast,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'history': history?.map((x) => x.toMap()).toList(),
      'address': address?.toMap(),
      'status': status,
      'type': type,
      'track_id': track_id,
      'track_url': track_url,
      'amount': amount,
      'delivery_forecast': delivery_forecast,
    };
  }

  factory Delivery.fromMap(Map<String, dynamic> map) {
    return Delivery(
      history: map['history'] != null ? List<Address>.from(map['history']?.map((x) => Address.fromMap(x))) : null,
      address: map['address'] != null ? Address.fromMap(map['address']) : null,
      status: map['status'],
      type: map['type'],
      track_id: map['track_id'] ?? '',
      track_url: map['track_url'],
      amount: map['amount']?.toInt(),
      delivery_forecast: map['delivery_forecast'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Delivery.fromJson(String source) => Delivery.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Delivery(history: $history, address: $address, status: $status, type: $type, track_id: $track_id, track_url: $track_url, amount: $amount, delivery_forecast: $delivery_forecast)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Delivery &&
      listEquals(other.history, history) &&
      other.address == address &&
      other.status == status &&
      other.type == type &&
      other.track_id == track_id &&
      other.track_url == track_url &&
      other.amount == amount &&
      other.delivery_forecast == delivery_forecast;
  }

  @override
  int get hashCode {
    return history.hashCode ^
      address.hashCode ^
      status.hashCode ^
      type.hashCode ^
      track_id.hashCode ^
      track_url.hashCode ^
      amount.hashCode ^
      delivery_forecast.hashCode;
  }
}
