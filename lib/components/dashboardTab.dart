import 'package:flutter/material.dart';

import '../constants.dart';
import '../responsive.dart';
import 'myFIles.dart';
import 'recentDetail.dart';
import 'storageDetail.dart';

class DashboardTab extends StatelessWidget {
  const DashboardTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 5,
          child: Column(
            children: [
              MyFiles(),
              const SizedBox(
                height: defaultPadding,
              ),
              const RecentFiles(),
              if (!Responsive.isDesktop(context))
                const SizedBox(
                  height: defaultPadding,
                ),
              if (!Responsive.isDesktop(context)) StorageDetail(),
            ],
          ),
        ),
        if (Responsive.isDesktop(context))
          const SizedBox(
            width: defaultPadding,
          ),
        if (Responsive.isDesktop(context))
          const Expanded(flex: 2, child: StorageDetail()),
      ],
    );
  }
}
