import 'dart:ui';

import 'package:flutter/material.dart';

class HomeBannerSection extends StatelessWidget {
  const HomeBannerSection({super.key});
  Future<String> _fetchBannerText() async {
    // TODO : Fetch banner text from API
    // force delay 5 seconds
    await Future.delayed(const Duration(seconds: 2));

    return "Text Text Text Text Text Text Text Text Text Text ";
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    double height = queryData.size.height;
    double width = queryData.size.width;
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      color: Colors.white.withAlpha((255 * 0.4).round()),
      child: FutureBuilder(
        future: _fetchBannerText(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Text(
                  "This is a very long text that should break into two lines to fit the banner,This is a very long text that should break into two lines to fit the bannerThis is a very long text that should break into two lines to fit the bannerThis is a very long text that should break into two lines to fit the banner",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.black)),
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
