import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final String title;

  const NextPage({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
