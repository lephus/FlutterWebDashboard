import 'package:flutter/material.dart';
import 'package:web_dashboard/widgets/custom_screen.dart';
import 'package:web_dashboard/widgets/large_screen.dart';
import 'package:web_dashboard/widgets/medium_screen.dart';
import 'package:web_dashboard/widgets/small_screen.dart';

import 'helpers/reponsiveness.dart';

class SiteLayout extends StatefulWidget {
  const SiteLayout({ Key? key }) : super(key: key);

  @override
  _SiteLayoutState createState() => _SiteLayoutState();
}

class _SiteLayoutState extends State<SiteLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white
      ),
      // ignore: prefer_const_constructors
      body: ReponsivenessWidget(
        LargeScreen: LageScreen(),
        CustomScreen: CustomScreen(),        
        MediumScreen: MediumScreen(),
        SmallScreen: SmallScreen(),
      )
    );
  }
}