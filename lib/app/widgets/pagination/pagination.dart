import 'package:az_proof/app/modules/home/controllers/home_controller.dart';
import 'package:az_proof/app/widgets/icon_svg.dart';
import 'package:az_proof/app/widgets/pagination/button_arrow.dart';
import 'package:az_proof/app/widgets/pagination/button_number.dart';
import 'package:az_proof/app/widgets/pagination/dropdown_pagination.dart';
import 'package:az_proof/app/widgets/pagination/label_pagination.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Item {
  int value;
  bool actived;

  Item({required this.value, this.actived = false});
}

class Pagination extends GetView<HomeController> {
  
  final List<String> pagesPerRow;
  

  const Pagination({
    Key? key,    
    required this.pagesPerRow,    
  }) : super(key: key);

  List<Widget> _getItens(List<Item> items) {
    List<Widget> list = [
      ButtonArrow(icon: LoadIconSvg(IconsSvg.CHEVRONS_LEFT)),
      ButtonArrow(icon: LoadIconSvg(IconsSvg.ARROW_LEFT)),
    ];
    
    items.forEach(
      (Item e) => list.add(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: NumberButton(number: e.value, actived: e.actived),
        ),
      ),
    );

    list.addAll([
      ButtonArrow(icon: LoadIconSvg(IconsSvg.ARROW_RIGHT)),
      ButtonArrow(icon: LoadIconSvg(IconsSvg.CHEVRONS_RIGHT)),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Obx(() =>
            LabelPagination(text: '1 de ${controller.totalPages} páginas')),
      ),
    ]);
    return list;
  }

  _getPagesPorRow() {
    return pagesPerRow
        .map(
          (String map) => DropdownMenuItem(
            child: Text(map),
            value: map,
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      decoration: BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8.0),
          bottomRight: Radius.circular(8.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(() => Row(children: _getItens(controller.pagesItem))),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LabelPagination(text: 'Linhas por página'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownPagination(items: _getPagesPorRow()),
              )
            ],
          )
        ],
      ),
    );
  }
}
