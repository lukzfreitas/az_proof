import 'dart:convert';

class Customer {
  String? name;
  String? doc;
  String? email;
  String? phone;
  Customer({
    this.name,
    this.doc,
    this.email,
    this.phone,
  });
  

  Customer copyWith({
    String? name,
    String? doc,
    String? email,
    String? phone,
  }) {
    return Customer(
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

  factory Customer.fromMap(Map<String, dynamic> map) {
    return Customer(
      name: map['name'],
      doc: map['doc'],
      email: map['email'],
      phone: map['phone'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Customer.fromJson(String source) => Customer.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Customer(name: $name, doc: $doc, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Customer &&
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
