import 'package:flutter/material.dart';

class CustomBookmark extends StatefulWidget {
  @override
  _CustomBookmarkState createState() => _CustomBookmarkState();
}

class _CustomBookmarkState extends State<CustomBookmark> {
  var bookmarked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => bookmarked = !bookmarked);
      },
      child: !bookmarked
          ? Icon(Icons.bookmark_outline_rounded)
          : Icon(Icons.bookmark_rounded),
    );
  }
}

