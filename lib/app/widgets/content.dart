import 'package:az_proof/app/widgets/card_demand.dart';
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
            CardDemand(
              icon: Icon(FeatherIcons.user),
              title: '200 Pedidos',
              subtitle: "R\$ 50.480,95",
            ),
            CardDemand(
              icon: Icon(FeatherIcons.user),
              title: '200 Pedidos',
              subtitle: "R\$ 50.480,95",
            ),
            CardDemand(
              icon: Icon(FeatherIcons.user),
              title: '200 Pedidos',
              subtitle: "R\$ 50.480,95",
            ),
          ],
        ),
        TitleDashboard(text: "Pedidos"),
        
      ],
    );
  }
}
