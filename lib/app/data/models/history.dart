import 'dart:convert';

import 'package:az_proof/app/data/models/address.dart';

class History {
  Address address;
  String status;
  String type;
  String track_id;
  String track_url;
  int amount;
  String delivery_forecast;
  History({
    required this.address,
    required this.status,
    required this.type,
    required this.track_id,
    required this.track_url,
    required this.amount,
    required this.delivery_forecast,
  });

  History copyWith({
    Address? address,
    String? status,
    String? type,
    String? track_id,
    String? track_url,
    int? amount,
    String? delivery_forecast,
  }) {
    return History(
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
      'address': address.toMap(),
      'status': status,
      'type': type,
      'track_id': track_id,
      'track_url': track_url,
      'amount': amount,
      'delivery_forecast': delivery_forecast,
    };
  }

  factory History.fromMap(Map<String, dynamic> map) {
    return History(
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

  factory History.fromJson(String source) => History.fromMap(json.decode(source));

  @override
  String toString() {
    return 'History(address: $address, status: $status, type: $type, track_id: $track_id, track_url: $track_url, amount: $amount, delivery_forecast: $delivery_forecast)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is History &&
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
    return address.hashCode ^
      status.hashCode ^
      type.hashCode ^
      track_id.hashCode ^
      track_url.hashCode ^
      amount.hashCode ^
      delivery_forecast.hashCode;
  }
}
