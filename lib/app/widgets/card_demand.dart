import 'package:flutter/material.dart';

class CardDemand extends StatelessWidget {
  final Icon icon;
  final String title;
  final String subtitle;

  const CardDemand({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 174.0,
      width: 359.3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.5),
          ),
        ],
      ),
      child: Text(title),
    );
  }
}
