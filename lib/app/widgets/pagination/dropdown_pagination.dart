import 'package:az_proof/app/widgets/icon_svg.dart';
import 'package:flutter/material.dart';

class DropdownPagination extends StatelessWidget {
  final List<DropdownMenuItem<String>> items;

  final String value;

  const DropdownPagination({Key? key, required this.items, this.value = '06'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 87,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          borderRadius: BorderRadius.circular(8.0),
          value: value,
          items: items,
          onChanged: (String? value) {},
          icon: Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: LoadIconSvg(IconsSvg.ARROW_DOWN),
          ),
          style: TextStyle(
            color: Color(0xff97A1A8),
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
