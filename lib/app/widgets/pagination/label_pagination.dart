import 'package:flutter/material.dart';

class LabelPagination extends StatelessWidget {
  final String text;

  const LabelPagination({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xff97A1A8),
        fontSize: 14.0,
        fontFamily: 'NunitoSans',
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
