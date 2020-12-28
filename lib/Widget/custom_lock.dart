import 'package:flutter/material.dart';

class CustomLock extends StatefulWidget {
  @override
  _CustomLockState createState() => _CustomLockState();
}

class _CustomLockState extends State<CustomLock> {
  var locked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => locked = !locked);
      },
      child: !locked
          ? Icon(
              Icons.lock_open_outlined,
              color: Colors.grey,
              size: 28,
            )
          : Icon(
              Icons.lock_outline,
              color: Colors.grey,
              size: 26,
            ),
    );
  }
}
