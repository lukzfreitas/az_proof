import 'package:flutter/material.dart';

class CellItem extends StatelessWidget {
  final String text;
  final bool firstCell;
  final bool lastCell;
  final bool numberPair;

  const CellItem({
    Key? key,
    required this.text,
    this.firstCell = false,
    this.lastCell = false,
    this.numberPair = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(      
      height: 58,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: numberPair ? Color(0xffFCFCFC) : Colors.transparent,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(firstCell ? 8.0 : 0),
            topRight: Radius.circular(lastCell ? 8.0 : 0)),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Color(0xff59666F),
            fontWeight: FontWeight.w400,
            fontSize: 12,
            fontFamily: 'NunitoSans',
            fontStyle: FontStyle.normal),
      ),
    );
  }
}
