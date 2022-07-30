import 'dart:convert';

class Address {
  String? line1;
  String? line2;
  String? line3;
  String? neighborhood;
  String? city;
  String? state;
  String? postal_code;
  String? country_code; 
  Address({
    this.line1,
    this.line2,
    this.line3,
    this.neighborhood,
    this.city,
    this.state,
    this.postal_code,
    this.country_code,
  });

  

  Address copyWith({
    String? line1,
    String? line2,
    String? line3,
    String? neighborhood,
    String? city,
    String? state,
    String? postal_code,
    String? country_code,
  }) {
    return Address(
      line1: line1 ?? this.line1,
      line2: line2 ?? this.line2,
      line3: line3 ?? this.line3,
      neighborhood: neighborhood ?? this.neighborhood,
      city: city ?? this.city,
      state: state ?? this.state,
      postal_code: postal_code ?? this.postal_code,
      country_code: country_code ?? this.country_code,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'line1': line1,
      'line2': line2,
      'line3': line3,
      'neighborhood': neighborhood,
      'city': city,
      'state': state,
      'postal_code': postal_code,
      'country_code': country_code,
    };
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      line1: map['line1'],
      line2: map['line2'],
      line3: map['line3'],
      neighborhood: map['neighborhood'],
      city: map['city'],
      state: map['state'],
      postal_code: map['postal_code'],
      country_code: map['country_code'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Address.fromJson(String source) => Address.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Address(line1: $line1, line2: $line2, line3: $line3, neighborhood: $neighborhood, city: $city, state: $state, postal_code: $postal_code, country_code: $country_code)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Address &&
      other.line1 == line1 &&
      other.line2 == line2 &&
      other.line3 == line3 &&
      other.neighborhood == neighborhood &&
      other.city == city &&
      other.state == state &&
      other.postal_code == postal_code &&
      other.country_code == country_code;
  }

  @override
  int get hashCode {
    return line1.hashCode ^
      line2.hashCode ^
      line3.hashCode ^
      neighborhood.hashCode ^
      city.hashCode ^
      state.hashCode ^
      postal_code.hashCode ^
      country_code.hashCode;
  }
}
