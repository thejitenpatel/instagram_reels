import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActionToolbar extends StatelessWidget {
  const ActionToolbar({Key? key}) : super(key: key);

  static const double actionWidgetSize = 60.0;
  static const double actionIconSize = 35.0;
  static const double shareActionSize = 25.0;
  static const double profileImageSize = 40.0;
  static const double plusIconSize = 50.0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        _getSocialAction(title: "3.2m", iconData: FontAwesomeIcons.heart),
        _getSocialAction(title: "1.5m", iconData: FontAwesomeIcons.comment),
        _getSocialAction(iconData: FontAwesomeIcons.ellipsisV, isInfo: true),
        _getAudioAction()
      ]),
    );
  }

  Widget _getSocialAction(
      {String? title, required IconData iconData, bool isInfo = false}) {
    return Container(
      width: actionWidgetSize,
      height: actionWidgetSize,
      margin: const EdgeInsets.only(top: 6),
      child: Column(
        children: [
          Expanded(
            child: Icon(
              iconData,
              size: isInfo ? 20 : 30,
              color: Colors.white,
            ),
          ),
          isInfo
              ? const SizedBox.shrink()
              : Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      title ?? "",
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                )
        ],
      ),
    );
  }

  Widget _getAudioAction() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: actionWidgetSize,
      width: actionWidgetSize,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            height: profileImageSize,
            width: profileImageSize,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(profileImageSize / 4)),
            child: CachedNetworkImage(
              imageUrl: "https://cdn-icons-png.flaticon.com/512/921/921077.png",
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ],
      ),
    );
  }
}
