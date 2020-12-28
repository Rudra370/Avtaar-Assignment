import 'package:flutter/material.dart';

class RowText extends StatefulWidget {
  final bool selected;
  final String title;
  RowText({@required this.selected, @required this.title});
  @override
  _RowTextState createState() => _RowTextState();
}

class _RowTextState extends State<RowText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontWeight: widget.selected ? FontWeight.bold : FontWeight.w600,
              color: widget.selected ? Colors.black : Colors.grey[400],
              fontSize: widget.selected ? 16 : 14,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          if (widget.selected)
            SizedBox(
              height: 2.8,
              width: 35,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.purple[800]),
              ),
            )
        ],
      ),
    );
  }
}
