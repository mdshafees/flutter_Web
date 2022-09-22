import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../constants.dart';
import 'fileInfo.dart';

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
                childAspectRatio: 1.4,
                crossAxisCount: 4,
                crossAxisSpacing: defaultPadding),
            itemBuilder: (context, index) {
              var detail = details[index];
              return FileInfoCard(detail: detail);
            })
      ],
    );
  }
}
