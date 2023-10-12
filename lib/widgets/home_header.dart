import 'package:flutter/material.dart';
import 'package:ja_mv_01/constants/theme_constants.dart';
import 'package:ja_mv_01/gen/assets.gen.dart';

class HomeHeaderSection extends StatelessWidget {
  HomeHeaderSection(
      {super.key,
      required this.routeToPreviousScreen,
      required this.routeToNextScreen});
  final VoidCallback routeToPreviousScreen;
  final VoidCallback routeToNextScreen;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: AppBarBackgroundPainter(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () => routeToPreviousScreen(),
          ),
          Assets.button.buttonimage.image(
            width: 30,
            height: 30,
          ),
          InkWell(
              onTap: () => routeToNextScreen(),
              child: Assets.button.buttonimage.image(
                width: 50,
                height: 50,
              )),
        ],
      ),
    );
  }
}
