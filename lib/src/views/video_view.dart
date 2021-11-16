
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_reels/src/bloc/preload_bloc.dart';
import 'package:video_player/video_player.dart';

class VideoView extends StatelessWidget {
  const VideoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<PreloadBloc, PreloadState>(
        builder: (context, state) {
          return PageView.builder(
            itemCount: state.urls.length,
            scrollDirection: Axis.vertical,
            onPageChanged: (index) => BlocProvider.of<PreloadBloc>(context)
                .add(PreloadEvent.onVideoIndexChanged(index)),
            itemBuilder: (context, index) {
              return state.focusedIndex == index
                  ? VideoPlayer(state.controllers[index]!)
                  : const SizedBox();
            },
          );
        },
      ),
    );
  }
}