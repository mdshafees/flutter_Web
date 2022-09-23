import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/responsive.dart';

import '../constants.dart';
import 'fileInfo.dart';

class MyFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
        Responsive(
          mobile: FileInfoGridView(
            crossAxis: size.width < 650 ? 2 : 4,
            childAspec: size.width < 650 ? 1.3 : 1,
          ),
          tablet: FileInfoGridView(),
          desktop: FileInfoGridView(
            childAspec: size.width < 1400 ? 1.1 : 1.4,
          ),
        )
      ],
    );
  }
}

class FileInfoGridView extends StatelessWidget {
  const FileInfoGridView({
    super.key,
    this.childAspec = 1.0,
    this.crossAxis = 4,
  });

  final int crossAxis;
  final double childAspec;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: details.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: childAspec,
            crossAxisCount: crossAxis,
            crossAxisSpacing: defaultPadding),
        itemBuilder: (context, index) {
          var detail = details[index];
          return FileInfoCard(detail: detail);
        });
  }
}
