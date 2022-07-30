import 'package:az_proof/app/data/models/order.dart';
import 'package:az_proof/app/modules/home/controllers/home_controller.dart';
import 'package:az_proof/app/utils/currency.dart';
import 'package:az_proof/app/utils/date.dart';
import 'package:az_proof/app/utils/doc.dart';
import 'package:az_proof/app/utils/language.dart';
import 'package:az_proof/app/widgets/table/cell_header.dart';
import 'package:az_proof/app/widgets/table/cell_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TableDashboard extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      List<TableRow> orders = [Header()];
      orders.addAll(List.from(controller.orders.map((order) => Items(order))));
      return Table(children: orders);
    });
  }

  TableRow Header() {
    return TableRow(
      children: [
        TableCell(child: CellHeader(text: 'ID do Pedido', firstCell: true)),
        TableCell(child: CellHeader(text: 'ID na Loja')),
        TableCell(child: CellHeader(text: 'Criação')),
        TableCell(child: CellHeader(text: 'Nome do cliente')),
        TableCell(child: CellHeader(text: 'CPF/CNPJ do cliente')),
        TableCell(child: CellHeader(text: 'Status do pedido')),
        TableCell(child: CellHeader(text: 'Status do pagamento')),
        TableCell(child: CellHeader(text: 'Método de pagamento')),
        TableCell(child: CellHeader(text: 'Total', lastCell: true)),
      ],
    );
  }

  TableRow Items(Order order) {
    return TableRow(
      children: [
        TableCell(
          child: CellItem(
              text: order.id.toString(), firstCell: true, numberPair: true),
        ),
        TableCell(child: CellItem(text: order.seller!.id)),
        TableCell(
          child: CellItem(
              text: Date.convertDate(order.createdAt.toString()),
              numberPair: true),
        ),
        TableCell(child: CellItem(text: order.customer!.name!.toString())),
        TableCell(
          child: CellItem(
              text: Doc.convertDoc(order.customer!.doc.toString()),
              numberPair: true),
        ),
        TableCell(
            child: CellItem(
          text: Language.convertToPortuguese(order.delivery!.status.toString()),
        )),
        TableCell(
            child: CellItem(
                text: Language.convertToPortuguese(order.payment!.status),
                numberPair: true)),
        TableCell(
            child: CellItem(
                text: Language.convertToPortuguese(order.payment!.method))),
        TableCell(
            child: CellItem(
                text: Currency.convertToBRL(order.delivery!.amount!.toDouble()),
                lastCell: true,
                numberPair: true)),
      ],
    );
  }
}
