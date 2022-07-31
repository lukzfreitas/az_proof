import 'dart:convert';

class InvoicesModel {
  String id;
  String createdAt;
  String status;
  InvoicesModel({
    required this.id,
    required this.createdAt,
    required this.status,
  });

  InvoicesModel copyWith({
    String? id,
    String? createdAt,
    String? status,
  }) {
    return InvoicesModel(
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

  factory InvoicesModel.fromMap(Map<String, dynamic> map) {
    return InvoicesModel(
      id: map['id'] ?? '',
      createdAt: map['createdAt'] ?? '',
      status: map['status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory InvoicesModel.fromJson(String source) => InvoicesModel.fromMap(json.decode(source));

  @override
  String toString() => 'InvoicesModel(id: $id, createdAt: $createdAt, status: $status)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is InvoicesModel &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.status == status;
  }

  @override
  int get hashCode => id.hashCode ^ createdAt.hashCode ^ status.hashCode;
}
