import 'dart:convert';

class PaymentModel {
  int amount;
  int original_amount;
  String status;
  int discount;
  String method;
  String transaction_id;
  int installments;
  String date;
  PaymentModel({
    required this.amount,
    required this.original_amount,
    required this.status,
    required this.discount,
    required this.method,
    required this.transaction_id,
    required this.installments,
    required this.date,
  });

  PaymentModel copyWith({
    int? amount,
    int? original_amount,
    String? status,
    int? discount,
    String? method,
    String? transaction_id,
    int? installments,
    String? date,
  }) {
    return PaymentModel(
      amount: amount ?? this.amount,
      original_amount: original_amount ?? this.original_amount,
      status: status ?? this.status,
      discount: discount ?? this.discount,
      method: method ?? this.method,
      transaction_id: transaction_id ?? this.transaction_id,
      installments: installments ?? this.installments,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'amount': amount,
      'original_amount': original_amount,
      'status': status,
      'discount': discount,
      'method': method,
      'transaction_id': transaction_id,
      'installments': installments,
      'date': date,
    };
  }

  factory PaymentModel.fromMap(Map<String, dynamic> map) {
    return PaymentModel(
      amount: map['amount']?.toInt() ?? 0,
      original_amount: map['original_amount']?.toInt() ?? 0,
      status: map['status'] ?? '',
      discount: map['discount']?.toInt() ?? 0,
      method: map['method'] ?? '',
      transaction_id: map['transaction_id'] ?? '',
      installments: map['installments']?.toInt() ?? 0,
      date: map['date'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentModel.fromJson(String source) => PaymentModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PaymentModel(amount: $amount, original_amount: $original_amount, status: $status, discount: $discount, method: $method, transaction_id: $transaction_id, installments: $installments, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PaymentModel &&
      other.amount == amount &&
      other.original_amount == original_amount &&
      other.status == status &&
      other.discount == discount &&
      other.method == method &&
      other.transaction_id == transaction_id &&
      other.installments == installments &&
      other.date == date;
  }

  @override
  int get hashCode {
    return amount.hashCode ^
      original_amount.hashCode ^
      status.hashCode ^
      discount.hashCode ^
      method.hashCode ^
      transaction_id.hashCode ^
      installments.hashCode ^
      date.hashCode;
  }
}
