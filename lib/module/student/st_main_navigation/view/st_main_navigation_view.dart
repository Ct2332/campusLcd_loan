import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../controller/st_main_navigation_controller.dart';

class StMainNavigationView extends StatefulWidget {
  const StMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, StMainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      bottomNavigationBar: PersistentTabView(
        context,
        controller: controller.navController,
        onItemSelected: (index) => controller.updateIndex(index: index),
        screens: controller.buildScreens(),
        confineInSafeArea: true,
        items: controller.navBarsItems(),

        backgroundColor:
            Colors.white, // Default is Colors.white.// Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: const NavBarDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          colorBehindNavBar: Colors.white,
        ),
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style15, // Choose the nav bar style with this property.
      ),
    );
  }

  @override
  State<StMainNavigationView> createState() => StMainNavigationController();
}
