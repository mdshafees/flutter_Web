import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/screens/dashboard.dart';

import '../components/drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          // if (Responsive.isDesktop(context))
          Expanded(child: SideMenu()),
          Expanded(flex: 5, child: DashBoardScreen()),
        ],
      ),
    );
  }
}
