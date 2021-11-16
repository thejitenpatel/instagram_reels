import 'package:flutter/material.dart';
import 'package:instagram_reels/src/views/video_view.dart';
import 'package:instagram_reels/src/widgets/action_toolbar.dart';
import 'package:instagram_reels/src/widgets/bottom_toolbar.dart';
import 'package:instagram_reels/src/widgets/video_des.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget get topSection => Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Reels",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
              size: 35,
            )
          ],
        ),
      );

  Widget get middleSection => Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [VideoDesc(), ActionToolbar()],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(children: [
          const VideoView(),
          Column(
            children: [
              topSection,
              middleSection,
              const BottomToolbar(),
            ],
          ),
        ]),
      ),
    );
  }
}
