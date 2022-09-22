import 'package:flutter/material.dart';

import '../constants.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Recent Files",
          style: Theme.of(context).textTheme.subtitle1,
        ),
        SizedBox(
          width: double.infinity,
          child: DataTable(
              columnSpacing: defaultPadding,
              horizontalMargin: 0,
              columns: const [
                DataColumn(label: Text("File Name")),
                DataColumn(label: Text("Date")),
                DataColumn(label: Text("Size")),
              ],
              rows: List.generate(
                  rowDetails.length, (index) => rowCell(rowDetails[index]))),
        )
      ]),
    );
  }
}

DataRow rowCell(detail) {
  return DataRow(cells: [
    DataCell(Text(detail['name'])),
    DataCell(Text(detail['date'])),
    DataCell(Text(detail['size'])),
  ]);
}

List rowDetails = [
  {"name": "XD Adobe", "date": "13-02-2022", "size": "12.0GB"},
  {"name": "Figma", "date": "11-03-2022", "size": "0.99GB"},
  {"name": "Illustrator", "date": "12-03-2022", "size": "1.2GB"},
  {"name": "Photoshop", "date": "12-03-2022", "size": "1.5GB"},
  {"name": "Vs code", "date": "13-03-2022", "size": "0.4GB"},
  {"name": "Postman", "date": "14-04-2022", "size": "0.22GB"},
  {"name": "Chrome", "date": "30-04-2022", "size": "0.83GB"},
  {"name": "Robo 3T", "date": "01-05-2022", "size": "0.12GB"},
  {"name": "File Zila", "date": "11-05-2022", "size": "0.99GB"},
];
