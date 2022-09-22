import 'package:flutter/material.dart';
import 'package:flutter_application_2/responsive.dart';

import '../constants.dart';

List details = [
  {
    "color": Colors.blue,
    "icon": Icons.insert_drive_file_sharp,
    "text": "Documents",
    "percent": 25,
    "files": 1234,
    "storage": "3.3GB"
  },
  {
    "color": Colors.amber,
    "icon": Icons.drafts,
    "text": "Draft",
    "percent": 60,
    "files": 444,
    "storage": "33.2GB"
  },
  {
    "color": Colors.grey,
    "icon": Icons.cloud,
    "text": "Cloud",
    "percent": 70,
    "files": 123,
    "storage": "12.8GB"
  },
  {
    "color": Colors.green,
    "icon": Icons.indeterminate_check_box,
    "text": "Drive",
    "percent": 12,
    "files": 542,
    "storage": "0.9GB"
  },
];

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    super.key,
    required this.detail,
  });

  // ignore: prefer_typing_uninitialized_variables
  final detail;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: Responsive.isDesktop(context) ? 0 : defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: detail['color'].withOpacity(0.1)),
                  child: Icon(
                    detail['icon'],
                    color: detail['color'],
                    size: 17,
                  ),
                ),
                const Icon(
                  Icons.more_vert,
                  color: Colors.white70,
                )
              ],
            ),
            Text(detail['text']),
            Stack(
              children: [
                Container(
                  height: 5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: detail['color'].withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10)),
                ),
                LayoutBuilder(builder: (context, constraints) {
                  return Container(
                    height: 5,
                    width: constraints.maxWidth * (detail['percent'] / 100),
                    decoration: BoxDecoration(
                        color: detail['color'],
                        borderRadius: BorderRadius.circular(10)),
                  );
                })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${detail['files']} Files",
                  style: TextStyle(fontSize: 12, color: Colors.white70),
                ),
                Text(
                  "${detail['storage']}",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            )
          ]),
    );
  }
}
