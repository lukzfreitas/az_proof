import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:az_proof/app/data/models/address_model.dart';

class DeliveryModel {
  List<AddressModel>? history;
  AddressModel? address;
  String? status;
  String? type;
  String track_id;
  String? track_url;
  int? amount;
  String? DeliveryModel_forecast;
  DeliveryModel({
    this.history,
    this.address,
    this.status,
    this.type,
    required this.track_id,
    this.track_url,
    this.amount,
    this.DeliveryModel_forecast,
  });
  

  DeliveryModel copyWith({
    List<AddressModel>? history,
    AddressModel? address,
    String? status,
    String? type,
    String? track_id,
    String? track_url,
    int? amount,
    String? DeliveryModel_forecast,
  }) {
    return DeliveryModel(
      history: history ?? this.history,
      address: address ?? this.address,
      status: status ?? this.status,
      type: type ?? this.type,
      track_id: track_id ?? this.track_id,
      track_url: track_url ?? this.track_url,
      amount: amount ?? this.amount,
      DeliveryModel_forecast: DeliveryModel_forecast ?? this.DeliveryModel_forecast,
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
      'DeliveryModel_forecast': DeliveryModel_forecast,
    };
  }

  factory DeliveryModel.fromMap(Map<String, dynamic> map) {
    return DeliveryModel(
      history: map['history'] != null ? List<AddressModel>.from(map['history']?.map((x) => AddressModel.fromMap(x))) : null,
      address: map['address'] != null ? AddressModel.fromMap(map['address']) : null,
      status: map['status'],
      type: map['type'],
      track_id: map['track_id'] ?? '',
      track_url: map['track_url'],
      amount: map['amount']?.toInt(),
      DeliveryModel_forecast: map['DeliveryModel_forecast'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DeliveryModel.fromJson(String source) => DeliveryModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DeliveryModel(history: $history, address: $address, status: $status, type: $type, track_id: $track_id, track_url: $track_url, amount: $amount, DeliveryModel_forecast: $DeliveryModel_forecast)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is DeliveryModel &&
      listEquals(other.history, history) &&
      other.address == address &&
      other.status == status &&
      other.type == type &&
      other.track_id == track_id &&
      other.track_url == track_url &&
      other.amount == amount &&
      other.DeliveryModel_forecast == DeliveryModel_forecast;
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
      DeliveryModel_forecast.hashCode;
  }
}
