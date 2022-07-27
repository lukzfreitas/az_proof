import 'package:flutter/material.dart';

class TitleDashboard extends StatelessWidget {
  final String text;

  const TitleDashboard({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(        
        text,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: Color(0xff59666F),          
          fontSize: 19.0,
          height: 6.0,
          fontStyle: FontStyle.normal,
          fontFamily: 'NunitoSans',
        ),
      ),
    );
  }
}
