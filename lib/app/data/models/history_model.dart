import 'dart:convert';

import 'package:az_proof/app/data/models/address_model.dart';

class HistoryModel {
  AddressModel? address;
  String? status;
  String? type;
  String? track_id;
  String? track_url;
  int? amount;
  String? delivery_forecast;
  HistoryModel({
    this.address,
    this.status,
    this.type,
    this.track_id,
    this.track_url,
    this.amount,
    this.delivery_forecast,
  });
  

  HistoryModel copyWith({
    AddressModel? address,
    String? status,
    String? type,
    String? track_id,
    String? track_url,
    int? amount,
    String? delivery_forecast,
  }) {
    return HistoryModel(
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
      'address': address?.toMap(),
      'status': status,
      'type': type,
      'track_id': track_id,
      'track_url': track_url,
      'amount': amount,
      'delivery_forecast': delivery_forecast,
    };
  }

  factory HistoryModel.fromMap(Map<String, dynamic> map) {
    return HistoryModel(
      address: map['address'] != null ? AddressModel.fromMap(map['address']) : null,
      status: map['status'],
      type: map['type'],
      track_id: map['track_id'],
      track_url: map['track_url'],
      amount: map['amount']?.toInt(),
      delivery_forecast: map['delivery_forecast'],
    );
  }

  String toJson() => json.encode(toMap());

  factory HistoryModel.fromJson(String source) => HistoryModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'HistoryModel(address: $address, status: $status, type: $type, track_id: $track_id, track_url: $track_url, amount: $amount, delivery_forecast: $delivery_forecast)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is HistoryModel &&
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
