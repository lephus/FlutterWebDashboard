import 'package:flutter/material.dart';
import 'package:get/get.dart';

const int largeScreenSize = 1366; // laptop, PC
const int customScreenSize = 1100;
const int mediumScreenSize = 768; // 
const int smallScreenSize = 360;

class ReponsivenessWidget extends StatelessWidget {
  final Widget LargeScreen;
  final Widget CustomScreen;
  final Widget MediumScreen;
  final Widget SmallScreen;

  const ReponsivenessWidget({ 
    Key? key,
    required this.LargeScreen, 
    required this.CustomScreen,
    required this.MediumScreen, 
    required this.SmallScreen, 
  }) : super(key: key);

static bool isLargeScreen() => Get.width >= largeScreenSize;
static bool isCustomScreen() => Get.width >= customScreenSize && Get.width < largeScreenSize;
static bool isMediumScreen() => Get.width >= mediumScreenSize && Get.width < customScreenSize;
static bool isSmallScreen() => Get.width <= smallScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
        double _width = constraints.maxWidth;
        if(_width >= largeScreenSize){
          return LargeScreen;
        }
        else if(_width >customScreenSize && _width < largeScreenSize){
          return CustomScreen;
        }
        else if(_width > mediumScreenSize && _width < customScreenSize){
          return MediumScreen;
        }
        return SmallScreen;
    });
  }
}