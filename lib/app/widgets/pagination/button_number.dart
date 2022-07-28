import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  
  final int number;
  final bool actived;

  const NumberButton({Key? key, required this.number, this.actived = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: CircleAvatar(
        backgroundColor: actived ? Color(0xffFE7C6E) : Colors.transparent,
        child: Text(
          number.toString(),
          style: TextStyle(color: actived ? Colors.white : Color(0xff97A1A8)),
        ),
      ),
    );
  }
}
