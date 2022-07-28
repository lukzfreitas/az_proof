import 'package:az_proof/app/widgets/card_dashboard.dart';
import 'package:az_proof/app/widgets/icon_svg.dart';
import 'package:az_proof/app/widgets/pagination/pagination.dart';
import 'package:az_proof/app/widgets/table/table_dashboard.dart';
import 'package:az_proof/app/widgets/title_dashboard.dart';
import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleDashboard(text: "Resumo da atividade"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardDashboard(
              icon: LoadIconSvg(IconsSvg.DEMAND),
              title: '200 Pedidos',
              subtitle: "R\$ 50.480,95",
              color: Color(0xffF4C8E1),
            ),
            CardDashboard(
              icon: LoadIconSvg(IconsSvg.SALES),
              title: '200 Pedidos',
              subtitle: "R\$ 50.480,95",
              color: Color(0xffB6EEDD),
            ),
            CardDashboard(
              icon: LoadIconSvg(IconsSvg.AVERAGE_TICKET),
              title: '200 Pedidos',
              subtitle: "R\$ 50.480,95",
              color: Color(0xffC3E7F3),
            ),
          ],
        ),
        TitleDashboard(text: "Pedidos"),
        TableDashboard(),
        Pagination(itens: [
          Item(value: 1),
          Item(value: 2),
          Item(value: 3, actived: true),
          Item(value: 4),
          Item(value: 5)
        ])
      ],
    );
  }
}
