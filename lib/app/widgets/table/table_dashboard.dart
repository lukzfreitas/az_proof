import 'package:az_proof/app/widgets/title_dashboard.dart';

import 'package:flutter/material.dart';

class TableDashboard extends StatelessWidget {
  const TableDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [Header(), Items()],      
    );
  }

  TableRow Header() {
    return TableRow(
      children: [
        TableCell(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffFE877A),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0)),
            ),
            child: TitleDashboard(text: 'Hello world 1'),
          ),
        ),
        TableCell(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffFE7C6E),
            ),
            child: TitleDashboard(text: 'Hello world 2'),
          ),
        ),
        TableCell(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffFE877A),
              borderRadius: BorderRadius.only(topRight: Radius.circular(8.0)),
            ),
            child: TitleDashboard(text: 'Hello world 3'),
          ),
        ),
      ],
    );
  }

  TableRow Items() {
    return TableRow(
      children: [
        TableCell(child: TitleDashboard(text: 'Hello world 1')),
        TableCell(child: TitleDashboard(text: 'Hello world 2')),
        TableCell(child: TitleDashboard(text: 'Hello world 3')),
      ],
    );
  }
}
