import 'package:bloc_app_stuctura/shared/bottom_nav/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
class CustomNavBar extends StatelessWidget {
  final Widget child;
  const CustomNavBar({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: child,
        bottomNavigationBar: const BottomNavigationBarWidget()
    );
  }


}
