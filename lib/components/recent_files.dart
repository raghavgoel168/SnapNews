import 'package:flutter/material.dart';

class RecentFiles extends StatelessWidget {
  final files = [
    ['XD File', '01-03-2021', '3.5mb'],
    ['Figma File', '27-02-2021', '19.0mb'],
    ['Documents', '23-02-2021', '32.5mb'],
    ['Sound File', '21-02-2021', '3.5mb'],
    ['Media File', '23-02-2021', '2.5gb'],
    ['Sals PDF', '25-02-2021', '3.5mb'],
    ['Excel File', '25-02-2021', '34.5mb'],
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      child: DataTable(
        columns: [
          DataColumn(label: Text("File Name")),
          DataColumn(label: Text("Date")),
          DataColumn(label: Text("Size")),
        ],
        rows: files.map((file) {
          return DataRow(cells: [
            DataCell(Text(file[0])),
            DataCell(Text(file[1])),
            DataCell(Text(file[2])),
          ]);
        }).toList(),
      ),
    );
  }
}
