import 'package:flutter/material.dart';

class ReusableTextWidget extends StatefulWidget {
  final String txt;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  const ReusableTextWidget(
      {super.key,
      required this.txt,
      this.fontSize = 14,
      this.fontWeight = FontWeight.w600,
      this.color = const Color(0xff616161)});

  @override
  State<ReusableTextWidget> createState() => _ReusableTextWidgetState();
}

class _ReusableTextWidgetState extends State<ReusableTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.txt,
      style: TextStyle(
          fontSize: widget.fontSize,
          fontWeight: widget.fontWeight,
          color: widget.color),
    );
  }
}
