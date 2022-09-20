import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../constants.dart';

class MyFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding * 1.5,
                        vertical: defaultPadding)),
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text("Add New"))
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        GridView.builder(
            itemCount: details.length,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, crossAxisSpacing: defaultPadding),
            itemBuilder: (context, index) {
              var detail = details[index];
              return Container(
                padding: EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(children: [
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
                      Icon(
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
                          width:
                              constraints.maxHeight * (detail['percent'] / 100),
                          decoration: BoxDecoration(
                              color: detail['color'],
                              borderRadius: BorderRadius.circular(10)),
                        );
                      })
                    ],
                  )
                ]),
              );
            })
      ],
    );
  }

  List details = [
    {
      "color": Colors.blue,
      "icon": Icons.insert_drive_file_sharp,
      "text": "Documents",
      "percent": 25
    },
    {
      "color": Colors.amber,
      "icon": Icons.drafts,
      "text": "Draft",
      "percent": 60
    },
    {"color": Colors.grey, "icon": Icons.cloud, "text": "Cloud", "percent": 70},
    {
      "color": Colors.green,
      "icon": Icons.indeterminate_check_box,
      "text": "Drive",
      "percent": 12
    },
  ];
}
