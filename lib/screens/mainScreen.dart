import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/components/provider.dart';
import 'package:flutter_application_2/screens/dashboard.dart';
import 'package:provider/provider.dart';

import '../components/drawer.dart';
import '../responsive.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context)) Expanded(child: SideMenu()),
          Expanded(flex: 5, child: DashBoardScreen()),
        ],
      ),
    );
  }
}
