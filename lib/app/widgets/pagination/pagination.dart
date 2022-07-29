import 'package:az_proof/app/widgets/icon_svg.dart';
import 'package:az_proof/app/widgets/pagination/button_arrow.dart';
import 'package:az_proof/app/widgets/pagination/button_number.dart';
import 'package:az_proof/app/widgets/pagination/dropdown_pagination.dart';
import 'package:az_proof/app/widgets/pagination/label_pagination.dart';
import 'package:flutter/material.dart';

class Item {
  int value;
  bool actived;

  Item({required this.value, this.actived = false});
}

class Pagination extends StatelessWidget {
  final List<Item> itens;

  const Pagination({Key? key, required this.itens}) : super(key: key);

  List<Widget> getItens() {
    List<Widget> list = [      
      ButtonArrow(icon: LoadIconSvg(IconsSvg.CHEVRONS_LEFT)),
      ButtonArrow(icon: LoadIconSvg(IconsSvg.ARROW_LEFT)),      
    ];
    itens.forEach(
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
        child: LabelPagination(text: '1 de 10 páginas'),
      ),
    ]);
    return list;
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
          Row(children: getItens()),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LabelPagination(text: 'Linhas por página'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownPagination(
                  items: [
                    DropdownMenuItem(
                      child: Text('05'),
                      value: '05',
                    ),
                    DropdownMenuItem(
                      child: Text('06'),
                      value: '06',
                    ),
                    DropdownMenuItem(
                      child: Text('07'),
                      value: '07',
                    ),
                    DropdownMenuItem(
                      child: Text('08'),
                      value: '08',
                    ),
                    DropdownMenuItem(
                      child: Text('09'),
                      value: '09',
                    ),
                    DropdownMenuItem(
                      child: Text('10'),
                      value: '10',
                    ),
                    DropdownMenuItem(
                      child: Text('15'),
                      value: '15',
                    ),
                    DropdownMenuItem(
                      child: Text('20'),
                      value: '20',
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
