import 'package:az_proof/app/widgets/card_dashboard.dart';
import 'package:az_proof/app/widgets/pagination/pagination.dart';
import 'package:az_proof/app/widgets/table/table_dashboard.dart';
import 'package:az_proof/app/widgets/title_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

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
              icon: Icon(FeatherIcons.user),
              title: '200 Pedidos',
              subtitle: "R\$ 50.480,95",
            ),
            CardDashboard(
              icon: Icon(FeatherIcons.user),
              title: '200 Pedidos',
              subtitle: "R\$ 50.480,95",
            ),
            CardDashboard(
              icon: Icon(FeatherIcons.user),
              title: '200 Pedidos',
              subtitle: "R\$ 50.480,95",
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
