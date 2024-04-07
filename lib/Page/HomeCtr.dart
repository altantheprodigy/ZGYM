import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';
import 'package:zgym/Page/Home.dart';
import 'package:zgym/Page/TabView.dart';

class HomeCtr extends GetResponsiveView {
  HomeCtr({super.key})
      : super(
      settings: const ResponsiveScreenSettings(
        desktopChangePoint: 1000,
        tabletChangePoint: 640,
      ));

  @override
  Widget phone() {
    return const HomePage();
  }
  Widget tablet() {
    return const TabletView();
  }

}
