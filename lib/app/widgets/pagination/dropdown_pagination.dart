import 'package:az_proof/app/modules/home/controllers/home_controller.dart';
import 'package:az_proof/app/utils/icon_svg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropdownPagination extends GetView<HomeController> {
  final List<DropdownMenuItem<int>> items;
  final int value;

  const DropdownPagination({
    Key? key,
    required this.items,
    required this.value,
  }) : super(key: key);

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
          onChanged: (int? value) => controller.changeRowsPerPage(value!),
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
