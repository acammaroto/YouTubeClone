import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtubeclone/models/colors.dart';

class Navbar extends StatefulWidget {
  const Navbar({
    Key key,
    @required int selectedIndex,
    @required Function onTap,
  })  : _selectedIndex = selectedIndex,
        _onTap = onTap,
        super(key: key);

  final int _selectedIndex;
  final Function _onTap;

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        boxShadow: [
          BoxShadow(color: gray, spreadRadius: 0, blurRadius: 0.5),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: SizedBox(
          child: BottomNavigationBar(
            backgroundColor: white,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.compass),
                label: "Explore",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.play),
                label: "Subscriptions",
              ),
            ],
            currentIndex: widget._selectedIndex,
            selectedItemColor: red,
            unselectedItemColor: gray,
            onTap: null,
            iconSize: 24,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}
