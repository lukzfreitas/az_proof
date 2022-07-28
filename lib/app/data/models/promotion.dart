import 'dart:convert';

class Promotion {
  int discount;
  int percentual;
  Promotion({
    required this.discount,
    required this.percentual,
  });

  Promotion copyWith({
    int? discount,
    int? percentual,
  }) {
    return Promotion(
      discount: discount ?? this.discount,
      percentual: percentual ?? this.percentual,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'discount': discount,
      'percentual': percentual,
    };
  }

  factory Promotion.fromMap(Map<String, dynamic> map) {
    return Promotion(
      discount: map['discount']?.toInt() ?? 0,
      percentual: map['percentual']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Promotion.fromJson(String source) => Promotion.fromMap(json.decode(source));

  @override
  String toString() => 'Promotion(discount: $discount, percentual: $percentual)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Promotion &&
      other.discount == discount &&
      other.percentual == percentual;
  }

  @override
  int get hashCode => discount.hashCode ^ percentual.hashCode;
}
