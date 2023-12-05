import 'package:flutter/material.dart';

class TQKTextButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final double width;
  final Color textColor;
  final double height;
  final Color backgroundColor;
  final bool isResponsive;
  final double textSize;
  final double radius;

  const TQKTextButton({super.key,
    required this.text,
    required this.onPressed,
    this.width = 150.0,
    this.textColor = Colors.white,
    this.height = 59.0,
    this.backgroundColor = const Color(0xFF0054A2),
    this.isResponsive = false,
    this.radius = 5.0,
    this.textSize = 18.0});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: height,
        width: (isResponsive) ? size.width : width,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(radius)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: textSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
