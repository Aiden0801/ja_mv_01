import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ja_mv_01/gen/assets.gen.dart';

import 'package:video_player/video_player.dart';

class HomeVideoClipSection extends StatefulWidget {
  const HomeVideoClipSection({super.key});

  @override
  State<HomeVideoClipSection> createState() => _HomeVideoClipSectionState();
}

class _HomeVideoClipSectionState extends State<HomeVideoClipSection> {
  late final VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(Assets.video.freepik)
      ..initialize().then((_) =>
          {_controller.play(), _controller.setLooping(true), setState(() {})});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<String> _fetchOverLayText() async {
    // TODO : Fetch text from API
    // force delay 2 seconds
    await Future.delayed(const Duration(seconds: 2));

    return "Text Text Text Text Text Text Text Text Text Text ";
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    double width = queryData.size.width;
    return SizedBox(
        height: 150,
        width: width,
        child: _controller.value.isInitialized
            ? Stack(children: [
                VideoPlayer(_controller),
                Positioned(
                  left: width * 0.1,
                  right: width * 0.1,
                  child: FutureBuilder(
                      future: _fetchOverLayText(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return AutoSizeText(snapshot.data!,
                              maxLines: 1,
                              style: const TextStyle(fontSize: 30, shadows: [
                                Shadow(
                                    color: Colors.white,
                                    offset: Offset(0, 3),
                                    blurRadius: 6)
                              ]));
                        }
                        return const SizedBox.shrink();
                      }),
                ),
              ])
            : const SizedBox(height: 30, child: CircularProgressIndicator()));
  }
}
