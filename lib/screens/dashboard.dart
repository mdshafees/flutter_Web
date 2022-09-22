import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/responsive.dart';

import '../components/chart.dart';
import '../components/header.dart';
import '../components/myFIles.dart';
import '../components/recentDetail.dart';
import '../components/storageDetail.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
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
            )
          ],
        ),
      ),
    );
  }
}
