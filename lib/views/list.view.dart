import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:youtubeclone/models/video.dart';
import 'package:youtubeclone/views/cell.widget.dart';

class YouTubeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Video> videos = Video.makeVideos();
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: videos.length,
        itemBuilder: (BuildContext context, int index) {
          return VideoCard(
            video: videos[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(color: Colors.white),
      ),
    );
  }
}
