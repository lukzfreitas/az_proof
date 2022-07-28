import 'dart:convert';

import 'package:az_proof/app/data/models/address.dart';
import 'package:az_proof/app/data/models/history.dart';

class Delivery {
  History history;
  Address address;
  String status;
  String type;
  String track_id;
  String track_url;
  int amount;
  String delivery_forecast;
  Delivery({
    required this.history,
    required this.address,
    required this.status,
    required this.type,
    required this.track_id,
    required this.track_url,
    required this.amount,
    required this.delivery_forecast,
  });

  Delivery copyWith({
    History? history,
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
      'history': history.toMap(),
      'address': address.toMap(),
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
      history: History.fromMap(map['history']),
      address: Address.fromMap(map['address']),
      status: map['status'] ?? '',
      type: map['type'] ?? '',
      track_id: map['track_id'] ?? '',
      track_url: map['track_url'] ?? '',
      amount: map['amount']?.toInt() ?? 0,
      delivery_forecast: map['delivery_forecast'] ?? '',
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
      other.history == history &&
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
