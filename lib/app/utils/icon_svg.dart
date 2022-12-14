import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconsSvg {  
  static const String ARROW_LEFT = 'assets/icons/arrow_left.svg';
  static const String ARROW_RIGHT = 'assets/icons/arrow_right.svg';
  static const String ARROW_DOWN = 'assets/icons/arrow_down.svg';
  static const String CHEVRONS_LEFT = 'assets/icons/chevrons_left.svg';
  static const String CHEVRONS_RIGHT = 'assets/icons/chevrons_right.svg';
  static const String DEMAND = 'assets/icons/demand.svg';
  static const String SALES = 'assets/icons/sales.svg';
  static const String AVERAGE_TICKET = 'assets/icons/average_ticket.svg';  
}

SvgPicture LoadIconSvg(String iconsSvg) {
  return SvgPicture.asset(
    iconsSvg,
    clipBehavior: Clip.antiAlias,
  );
}
