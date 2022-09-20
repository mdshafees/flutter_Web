import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';

import 'chart.dart';
import 'storageInfo.dart';

class StorageDetail extends StatelessWidget {
  const StorageDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "Storage Details",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Piechart(),
        const DetailTile(
          text: "Document Files",
          data: "1.39 GB",
          count: 1324,
          icon: Icons.task,
          iconColor: primaryColor,
        ),
        const DetailTile(
          text: "Media Files",
          data: "1.45 GB",
          count: 980,
          icon: Icons.play_circle,
          iconColor: Colors.cyan,
        ),
        const DetailTile(
          text: "Other Files",
          data: "11.39 GB",
          count: 1190,
          icon: Icons.file_present_sharp,
          iconColor: Colors.amber,
        ),
        const DetailTile(
          text: "Unknown Files",
          data: "0.8 GB",
          count: 234,
          icon: Icons.insert_drive_file_sharp,
          iconColor: Colors.red,
        ),
      ]),
    );
  }
}
