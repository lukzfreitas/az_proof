import 'dart:convert';

class Invoices {
  String id;
  String createdAt;
  String status;
  Invoices({
    required this.id,
    required this.createdAt,
    required this.status,
  });

  Invoices copyWith({
    String? id,
    String? createdAt,
    String? status,
  }) {
    return Invoices(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'createdAt': createdAt,
      'status': status,
    };
  }

  factory Invoices.fromMap(Map<String, dynamic> map) {
    return Invoices(
      id: map['id'] ?? '',
      createdAt: map['createdAt'] ?? '',
      status: map['status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Invoices.fromJson(String source) => Invoices.fromMap(json.decode(source));

  @override
  String toString() => 'Invoices(id: $id, createdAt: $createdAt, status: $status)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Invoices &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.status == status;
  }

  @override
  int get hashCode => id.hashCode ^ createdAt.hashCode ^ status.hashCode;
}
