import 'package:flutter/material.dart';

class CellHeader extends StatelessWidget {
  final String text;
  final bool firstCell;
  final bool lastCell;

  const CellHeader(
      {Key? key,
      required this.text,
      this.firstCell = false,
      this.lastCell = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Color(0xffFE877A),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(firstCell ? 8.0 : 0),
            topRight: Radius.circular(lastCell ? 8.0 : 0)),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white,            
            fontWeight: FontWeight.w700,            
            height: 1.4,
            fontSize: 14,
            fontFamily: 'NunitoSans',
            fontStyle: FontStyle.normal),
      ),
    );
  }
}
