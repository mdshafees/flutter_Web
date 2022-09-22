import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/responsive.dart';

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
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: Responsive.isDesktop(context)
                    ? 1.4
                    : Responsive.isTablet(context)
                        ? 1.8
                        : 1.4,
                crossAxisCount: Responsive.isDesktop(context) ? 4 : 2,
                crossAxisSpacing: defaultPadding),
            itemBuilder: (context, index) {
              var detail = details[index];
              return FileInfoCard(detail: detail);
            })
      ],
    );
  }
}
