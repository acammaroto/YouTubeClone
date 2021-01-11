import 'package:flutter/material.dart';
import 'package:youtubeclone/models/colors.dart';
import 'package:youtubeclone/views/appbar.widget.dart';
import 'package:youtubeclone/views/list.view.dart';
import 'package:youtubeclone/views/navbar.widget.dart';

void main() {
  runApp(YouTubeClone());
}

class YouTubeClone extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: SizedBox(
        height: 85,
        child: Navbar(
          selectedIndex: 0,
          onTap: () => {},
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            AppBarYouTube(),
            YouTubeList(),
          ],
        ),
      ),
    );
  }
}
