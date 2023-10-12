import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ja_mv_01/gen/assets.gen.dart';

class HomeButtonWithText extends StatefulWidget {
  const HomeButtonWithText({super.key});

  @override
  State<HomeButtonWithText> createState() => _HomeButtonWithTextState();
}

class _HomeButtonWithTextState extends State<HomeButtonWithText> {
  @override
  Widget build(BuildContext context) {
    const double _buttonWidth = 200;
    const double _buttonHeight = 100;

    MediaQueryData queryData = MediaQuery.of(context);
    double width = queryData.size.width;

    return Stack(children: [
      Container(
        color: Colors.blue,
      ),
      Positioned(
          left: (width - _buttonWidth) / 2,
          child: Card(
            color: Colors.black,
            child: SizedBox(
                width: _buttonWidth,
                height: _buttonHeight,
                child: Column(children: [
                  const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: _buttonWidth * 0.1),
                      child: AutoSizeText(
                          'Text Text Text Text Text Text Text Text Text ',
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ))),
                  Assets.button.buttonimage.image(
                    width: 50,
                    height: 50,
                  )
                ])),
          )),
    ]);
  }
}
