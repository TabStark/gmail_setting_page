import 'package:flutter/material.dart';
import 'package:gmail_setting_page/utils/appcolors.dart';

class LinksWidgets extends StatefulWidget {
  final String txt;
  const LinksWidgets({super.key, required this.txt});

  @override
  State<LinksWidgets> createState() => _LinksWidgetsState();
}

class _LinksWidgetsState extends State<LinksWidgets> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onHover: (value) {},
        child: Text(
          widget.txt,
          style: TextStyle(
            decoration:
                isHovered ? TextDecoration.underline : TextDecoration.none,
            decorationColor: Appcolors().activeColor,
            color: Appcolors().activeColor,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
