import 'dart:convert';

class CustomerModel {
  String? name;
  String? doc;
  String? email;
  String? phone;
  CustomerModel({
    this.name,
    this.doc,
    this.email,
    this.phone,
  });
  

  CustomerModel copyWith({
    String? name,
    String? doc,
    String? email,
    String? phone,
  }) {
    return CustomerModel(
      name: name ?? this.name,
      doc: doc ?? this.doc,
      email: email ?? this.email,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'doc': doc,
      'email': email,
      'phone': phone,
    };
  }

  factory CustomerModel.fromMap(Map<String, dynamic> map) {
    return CustomerModel(
      name: map['name'],
      doc: map['doc'],
      email: map['email'],
      phone: map['phone'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomerModel.fromJson(String source) => CustomerModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CustomerModel(name: $name, doc: $doc, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CustomerModel &&
      other.name == name &&
      other.doc == doc &&
      other.email == email &&
      other.phone == phone;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      doc.hashCode ^
      email.hashCode ^
      phone.hashCode;
  }
}
