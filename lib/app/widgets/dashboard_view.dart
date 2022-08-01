import 'package:az_proof/app/modules/home/controllers/home_controller.dart';
import 'package:az_proof/app/utils/currency.dart';
import 'package:az_proof/app/widgets/card_dashboard.dart';
import 'package:az_proof/app/widgets/icon_svg.dart';
import 'package:az_proof/app/widgets/pagination/pagination.dart';
import 'package:az_proof/app/widgets/table/table_dashboard.dart';
import 'package:az_proof/app/widgets/title_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleDashboard(
                text: "Resumo da atividade"),
            Obx(
              () => constraints.maxWidth > 1100
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardDashboard(
                          icon: LoadIconSvg(IconsSvg.DEMAND),
                          title: '${controller.ordersCount} Pedidos',
                          subtitle: Currency.convertToBRL(
                              controller.ordersTotal.value),
                          color: Color(0xffF4C8E1),
                        ),
                        CardDashboard(
                          icon: LoadIconSvg(IconsSvg.SALES),
                          title: '${controller.salesCount} Vendas',
                          subtitle: Currency.convertToBRL(
                              controller.salesTotal.value),
                          color: Color(0xffB6EEDD),
                        ),
                        CardDashboard(
                          icon: LoadIconSvg(IconsSvg.AVERAGE_TICKET),
                          title: 'Ticket Médio',
                          subtitle: Currency.convertToBRL(
                              controller.averageTicket.value),
                          color: Color(0xffC3E7F3),
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardDashboard(
                            icon: LoadIconSvg(IconsSvg.DEMAND),
                            title: '${controller.ordersCount} Pedidos',
                            subtitle: Currency.convertToBRL(
                                controller.ordersTotal.value),
                            color: Color(0xffF4C8E1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardDashboard(
                            icon: LoadIconSvg(IconsSvg.SALES),
                            title: '${controller.salesCount} Vendas',
                            subtitle: Currency.convertToBRL(
                                controller.salesTotal.value),
                            color: Color(0xffB6EEDD),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardDashboard(
                            icon: LoadIconSvg(IconsSvg.AVERAGE_TICKET),
                            title: 'Ticket Médio',
                            subtitle: Currency.convertToBRL(
                                controller.averageTicket.value),
                            color: Color(0xffC3E7F3),
                          ),
                        ),
                      ],
                    ),
            ),
            TitleDashboard(text: "Pedidos"),
            TableDashboard(),
            Pagination(
              pagesPerRow: [05, 06, 07, 08, 09, 10, 15, 20],
            ),
          ],
        );
      },
    );
  }
}
