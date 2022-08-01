import 'package:flutter/material.dart';

class SubtitleCard extends StatelessWidget {
  
  final String text;
  
  const SubtitleCard({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Color(0xff59666F),
          fontSize: 19.0,
          fontStyle: FontStyle.normal,
          fontFamily: 'NunitoSans',
        ),
      ),
    );
  }
}