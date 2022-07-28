import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonArrow extends StatelessWidget {
  final SvgPicture icon;

  const ButtonArrow({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: InkWell(
        onTap: () => {},
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: icon,
        ),
      ),
    );
  }
}
