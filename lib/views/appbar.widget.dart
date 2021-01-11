import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtubeclone/models/colors.dart';

class AppBarYouTube extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        margin: EdgeInsets.only(left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                // do something
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: lightGrey,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  CupertinoIcons.search,
                  color: gray,
                ),
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                image: new DecorationImage(
                    image: AssetImage("assets/youtube_logo.png"),
                    fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                //do something
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                  image: new DecorationImage(
                      image: AssetImage("assets/ac_tree.png"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ));
  }
}
