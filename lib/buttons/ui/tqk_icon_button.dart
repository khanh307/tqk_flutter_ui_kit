import 'package:flutter/material.dart';

class TQKIconButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final double width;
  final Color textColor;
  final double height;
  final Color backgroundColor;
  final bool isResponsive;
  final double textSize;
  final Widget? icon;
  final Alignment iconAlign;
  final Alignment textAlign;
  final double radius;

  const TQKIconButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.width = 250,
      this.textColor = Colors.white,
      this.height = 59,
      this.backgroundColor = const Color(0xFF222121),
      this.isResponsive = false,
      this.textSize = 18,
      this.iconAlign = Alignment.centerRight,
      this.textAlign = Alignment.center,
      this.radius = 1000,
      this.icon});

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
        padding: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(radius)),
        child: Stack(
          fit: StackFit.expand,
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
