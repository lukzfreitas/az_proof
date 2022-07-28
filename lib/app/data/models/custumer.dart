import 'dart:convert';

class Custumer {
  String name;
  String doc;
  String email;
  String phone;
  Custumer({
    required this.name,
    required this.doc,
    required this.email,
    required this.phone,
  });
  

  Custumer copyWith({
    String? name,
    String? doc,
    String? email,
    String? phone,
  }) {
    return Custumer(
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

  factory Custumer.fromMap(Map<String, dynamic> map) {
    return Custumer(
      name: map['name'] ?? '',
      doc: map['doc'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Custumer.fromJson(String source) => Custumer.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Custumer(name: $name, doc: $doc, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Custumer &&
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
