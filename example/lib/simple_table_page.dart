import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_table/table_sticky_headers.dart';

class SimpleTablePage extends StatelessWidget {
  SimpleTablePage(
      {required this.data, required this.titleColumn, required this.titleRow});

  final List<List<String>> data;
  final List<String> titleColumn;
  final List<String> titleRow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sticky Headers Two-Dimension  Table'),
        backgroundColor: Colors.amber,
      ),
      body: StickyHeadersTable(
        colorHeader: Colors.transparent,
        contentLength: 12,
        widthCells: (i, j) => 80.0 + Random().nextInt(150 - 80),
        columnsLength: titleColumn.length,
        rowsLength: titleRow.length,
        columnsTitleBuilder: (i) => Text(titleColumn[i]),
        rowsTitleBuilder: (i) => Text(titleRow[i]),
        contentCellBuilder: (i, j) => Text(data[i][j]),
        legendCell: Text('Sticky Legend'),
      ),
    );
  }
}
