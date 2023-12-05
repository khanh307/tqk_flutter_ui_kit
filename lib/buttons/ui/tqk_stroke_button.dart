import 'package:flutter/material.dart';

class TQKStrokeButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final double width;
  final Color textColor;
  final double height;
  final Color backgroundColor;
  final Color borderColor;
  final bool isResponsive;
  final double textSize;
  final double radius;
  final Alignment iconAlign;
  final Alignment textAlign;
  final Widget? icon;

  const TQKStrokeButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.width = 150.0,
      this.textColor = const Color(0xFF0054A2),
      this.height = 59.0,
      this.backgroundColor = Colors.white,
      this.isResponsive = false,
      this.borderColor = const Color(0xFF0054A2),
      this.iconAlign = Alignment.centerRight,
      this.textAlign = Alignment.center,
      this.radius = 5.0,
      this.icon,
      this.textSize = 18.0});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: height,
        width: (isResponsive) ? size.width : width,
        padding: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(width: 2, color: borderColor),
            borderRadius: BorderRadius.circular(radius)),
        child: Stack(
          children: [
            Align(
              alignment: textAlign,
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: textSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            (icon != null)
                ? Align(alignment: iconAlign, child: icon!)
                : Container()
          ],
        ),
      ),
    );
  }
}
