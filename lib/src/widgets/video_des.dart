import 'package:flutter/material.dart';

class VideoDesc extends StatelessWidget {
  const VideoDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
        height: 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "@thejitenpatel",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(
                  width: 12,
                ),
                SizedBox(
                  height: 25,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        const BorderSide(width: 1, color: Colors.white),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Follow",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              "Making Machine Learn. #TheBoyWhoCode",
            ),
            Row(
              children: const [
                Icon(
                  Icons.music_note,
                  size: 15,
                  color: Colors.white,
                ),
                Text("Artist name - Album name - song",
                    style: TextStyle(fontSize: 12))
              ],
            )
          ],
        ),
      ),
    );
  }
}
