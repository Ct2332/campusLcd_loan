import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lcd_loan/module/student/st_history/view/st_history_view.dart';
import 'package:lcd_loan/module/student/st_home/view/st_home_view.dart';
import 'package:lcd_loan/module/student/st_scanner/view/st_scanner_view.dart';
import 'package:lcd_loan/state_util.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../view/st_main_navigation_view.dart';

class StMainNavigationController extends State<StMainNavigationView>
    implements MvcController {
  static late StMainNavigationController instance;
  late StMainNavigationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  final PersistentTabController navController =
      PersistentTabController(initialIndex: 0);

  updateIndex({required int index}) {
    navController.index = index;
    log("Current Index = ${navController.index}");
    setState(() {});
  }

  List<Widget> buildScreens() {
    return const [
      StHomeView(),
      StScannerView(),
      StHistoryView(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/icons/dashboard.svg',
          height: 20,
          colorFilter: ColorFilter.mode(
            navController.index == 0
                ? Colors.amber
                : Colors.grey.withOpacity(0.4),
            BlendMode.srcIn,
          ),
        ),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/icons/scanner.svg',
          height: 20,
          colorFilter: ColorFilter.mode(
            navController.index == 1 ? Colors.black : Colors.grey,
            BlendMode.srcIn,
          ),
        ),
        activeColorPrimary:
            navController.index == 1 ? Colors.amber : Colors.grey[300]!,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/icons/history.svg',
          height: 20,
          colorFilter: ColorFilter.mode(
            navController.index == 2
                ? Colors.amber
                : Colors.grey.withOpacity(0.4),
            BlendMode.srcIn,
          ),
        ),
      ),
    ];
  }
}
