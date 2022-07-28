import 'dart:convert';

class Partner {
  String id;
  String name;
  String doc;
  int sales_comission;
  int sales_percentual;
  Partner({
    required this.id,
    required this.name,
    required this.doc,
    required this.sales_comission,
    required this.sales_percentual,
  });

  Partner copyWith({
    String? id,
    String? name,
    String? doc,
    int? sales_comission,
    int? sales_percentual,
  }) {
    return Partner(
      id: id ?? this.id,
      name: name ?? this.name,
      doc: doc ?? this.doc,
      sales_comission: sales_comission ?? this.sales_comission,
      sales_percentual: sales_percentual ?? this.sales_percentual,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'doc': doc,
      'sales_comission': sales_comission,
      'sales_percentual': sales_percentual,
    };
  }

  factory Partner.fromMap(Map<String, dynamic> map) {
    return Partner(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      doc: map['doc'] ?? '',
      sales_comission: map['sales_comission']?.toInt() ?? 0,
      sales_percentual: map['sales_percentual']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Partner.fromJson(String source) => Partner.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Partner(id: $id, name: $name, doc: $doc, sales_comission: $sales_comission, sales_percentual: $sales_percentual)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Partner &&
      other.id == id &&
      other.name == name &&
      other.doc == doc &&
      other.sales_comission == sales_comission &&
      other.sales_percentual == sales_percentual;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      doc.hashCode ^
      sales_comission.hashCode ^
      sales_percentual.hashCode;
  }
}
