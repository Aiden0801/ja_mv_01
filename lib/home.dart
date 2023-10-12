import 'package:flutter/material.dart';
import 'package:ja_mv_01/constants/theme_constants.dart';
import 'package:ja_mv_01/gen/assets.gen.dart';
import 'package:ja_mv_01/next_screen.dart';
import 'package:ja_mv_01/previous_screen.dart';
import 'package:ja_mv_01/widgets/home_banner.dart';
import 'package:ja_mv_01/widgets/home_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void routeToPreviousScreen() {
    // Go to the Previous Screen
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => const PreviousScreen(),
        opaque: false,
        transitionDuration: const Duration(milliseconds: 200),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  void routeToNextScreen() {
    // Go to the Previous Screen
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => const NextScreen(),
        opaque: false,
        transitionDuration: const Duration(milliseconds: 200),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          HomeHeaderSection(
              routeToPreviousScreen: routeToPreviousScreen,
              routeToNextScreen: routeToNextScreen),
          const HomeBannerSection(),
          Expanded(
              child: CustomPaint(
                  painter: AppBarBackgroundPainter(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Text('Hello')],
                  ))),
        ],
      ),
    ));
  }
}
