import 'package:az_proof/app/widgets/table/cell_header.dart';
import 'package:az_proof/app/widgets/table/cell_item.dart';

import 'package:flutter/material.dart';

class TableDashboard extends StatelessWidget {
  const TableDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [Header(), Items(), Items(),],
    );
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

  TableRow Items() {
    return TableRow(      
      children: [
        TableCell(child: CellItem(text: 'Hello world 1', firstCell: true, numberPair: true)),
        TableCell(child: CellItem(text: 'Hello world 2')),
        TableCell(child: CellItem(text: 'Hello world 3', numberPair: true)),
        TableCell(child: CellItem(text: 'Hello world 1')),
        TableCell(child: CellItem(text: 'Hello world 2', numberPair: true)),
        TableCell(child: CellItem(text: 'Hello world 3')),
        TableCell(child: CellItem(text: 'Hello world 1', numberPair: true)),
        TableCell(child: CellItem(text: 'Hello world 2')),
        TableCell(child: CellItem(text: 'Hello world 3', lastCell: true, numberPair: true)),
      ],
    );
  }
}
