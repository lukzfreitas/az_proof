import 'package:az_proof/app/modules/home/controllers/home_controller.dart';
import 'package:az_proof/app/widgets/card_dashboard.dart';
import 'package:az_proof/app/widgets/icon_svg.dart';
import 'package:az_proof/app/widgets/pagination/pagination.dart';
import 'package:az_proof/app/widgets/table/table_dashboard.dart';
import 'package:az_proof/app/widgets/title_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardView extends GetView<HomeController> {
  
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleDashboard(text: "Resumo da atividade"),
        Obx(
          () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,              
              children: [
                CardDashboard(
                  icon: LoadIconSvg(IconsSvg.DEMAND),
                  title:  '${controller.ordersTotal} Pedidos',
                  subtitle: "R\$ 50.480,95",
                  color: Color(0xffF4C8E1),
                ),
                CardDashboard(
                  icon: LoadIconSvg(IconsSvg.SALES),
                  title: '${controller.salesCount} Pedidos',
                  subtitle: "R\$ 50.480,95",
                  color: Color(0xffB6EEDD),
                ),
                CardDashboard(
                  icon: LoadIconSvg(IconsSvg.AVERAGE_TICKET),
                  title: '${controller.averageTicket} Pedidos',
                  subtitle: "R\$ 50.480,95",
                  color: Color(0xffC3E7F3),
                ),
              ],
              ),
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
