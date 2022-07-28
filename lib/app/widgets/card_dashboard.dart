import 'package:az_proof/app/widgets/subtitle_card.dart';
import 'package:az_proof/app/widgets/title_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardDashboard extends StatelessWidget {
  final SvgPicture icon;
  final String title;
  final String subtitle;
  final Color color;

  const CardDashboard({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      width: 359.3,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 1,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(            
            backgroundColor: color,
            child: icon
          ),
          TitleCard(text: title),
          SubtitleCard(text: subtitle)
        ],
      ),
    );
  }
}
