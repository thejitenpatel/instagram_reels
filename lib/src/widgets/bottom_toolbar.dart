import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_reels/src/reels_icons.dart';

class BottomToolbar extends StatelessWidget {
  const BottomToolbar({Key? key}) : super(key: key);

  static const navIconSize = 30.0;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
            size: navIconSize,
          ),
          Icon(
            Icons.search_outlined,
            color: Colors.white,
            size: navIconSize,
          ),
          Icon(
            Icons.video_call_rounded,
            color: Colors.white,
            size: navIconSize,
          ),
          Icon(
            FontAwesomeIcons.heart,
            color: Colors.white,
            size: 25,
          ),
          Icon(
            FontAwesomeIcons.user,
            color: Colors.white,
            size: 25,
          )
        ]);
  }
}
