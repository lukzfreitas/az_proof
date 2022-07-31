import 'dart:convert';

class PromotionModel {
  int discount;
  int percentual;
  PromotionModel({
    required this.discount,
    required this.percentual,
  });

  PromotionModel copyWith({
    int? discount,
    int? percentual,
  }) {
    return PromotionModel(
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

  factory PromotionModel.fromMap(Map<String, dynamic> map) {
    return PromotionModel(
      discount: map['discount']?.toInt() ?? 0,
      percentual: map['percentual']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory PromotionModel.fromJson(String source) => PromotionModel.fromMap(json.decode(source));

  @override
  String toString() => 'PromotionModel(discount: $discount, percentual: $percentual)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PromotionModel &&
      other.discount == discount &&
      other.percentual == percentual;
  }

  @override
  int get hashCode => discount.hashCode ^ percentual.hashCode;
}
