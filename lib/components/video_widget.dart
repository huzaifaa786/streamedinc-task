// ignore_for_file: library_private_types_in_public_api, deprecated_member_use, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task/models/post_model.dart';
import 'package:video_cached_player/video_cached_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;
  final PostModel post;

  const VideoPlayerWidget(
      {Key? key,
      required this.videoUrl,
      required this.post})
      : super(key: key);

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late CachedVideoPlayerController _videoController;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _videoController = CachedVideoPlayerController.network(widget.videoUrl);
    _initializeVideoPlayerFuture = _videoController.initialize();
       _videoController.play();
    _videoController.setLooping(true);
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_videoController.value.isPlaying) {
          _videoController.pause();
        } else {
          _videoController.play();
        }
      },
      child: Stack(
        children: [
          FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Center(
                  child: AspectRatio(
                    aspectRatio: _videoController.value.aspectRatio,
                    child: CachedVideoPlayer(_videoController),
                  ),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
          // Positioned(child: _top()),
          // Positioned(child: _right(context, widget.post)),
          // Positioned(child: _bottom(widget.post)),
        ],
      ),
    );
  }
}
