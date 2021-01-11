import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtubeclone/models/colors.dart';
import 'package:youtubeclone/models/textstyles.dart';
import 'package:youtubeclone/models/video.dart';

class VideoCard extends StatelessWidget {
  VideoCard({this.video});

  final Video video;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, bottom: 10, right: 15),
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: video.thumbnail,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        video.getVideoTitle(),
                        style: videoTitleStyle,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(CupertinoIcons.ellipsis)
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                video.getViewCount() + " views",
                style: videoInfoStyle,
              ),
              Text(
                " ∙ ",
                style: videoInfoStyle,
              ),
              Text(
                video.getTimeSinceUpload() + " ago",
                style: videoInfoStyle,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                  image: new DecorationImage(
                      image: video.channel.profilePicture, fit: BoxFit.cover),
                ),
              ),
              Text(
                video.channel.channelName,
                style: videoInfoStyle,
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  //Do Something
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 45,
                  decoration: BoxDecoration(
                    color: red,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "Subscribe",
                    style: subscribeTextStyle,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
