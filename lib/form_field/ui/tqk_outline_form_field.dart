import 'package:flutter/material.dart';

class TQKOutlineFormField extends StatelessWidget {
  final String? labelText;
  final TextStyle? labelStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final IconData? suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final IconData? prefixIcon;
  final Color fontColor;
  final Color outlineColor;
  final Color focusColor;
  final Color fillColor;
  final String? initText;
  final TextEditingController? controller;
  final Function(String?)? validator;
  final AutovalidateMode autovalidateMode;
  final bool isEnable;
  final int? maxLenght;
  final int? maxLines;
  final int? minLines;
  final Function()? onTapSuffix;
  final Function(String)? onChanged;
  final Function()? onTap;
  final Function(PointerDownEvent)? onTapOutside;

  const TQKOutlineFormField(
      {super.key,
      this.labelText,
      this.labelStyle,
      this.hintText,
      this.hintStyle,
      this.obscureText = false,
      this.isEnable = true,
      this.fontColor = Colors.black,
      this.suffixIcon,
      this.prefixIcon,
      this.maxLines = 1,
      this.minLines,
      this.initText,
      this.maxLenght,
      this.keyboardType = TextInputType.text,
      this.autovalidateMode = AutovalidateMode.onUserInteraction,
      this.controller,
      this.onTapSuffix,
      this.validator,
      this.outlineColor = const Color(0xFFafb0b2),
      this.focusColor = const Color(0xFFafb0b2),
      this.fillColor = Colors.white,
      this.onChanged,
      this.onTap,
      this.onTapOutside});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: minLines,
      maxLines: maxLines,
      onTapOutside: onTapOutside,
      onTap: onTap,
      onChanged: onChanged,
      validator: (validator != null)
          ? (value) {
              return validator!(value);
            }
          : null,
      controller: controller,
      autovalidateMode: autovalidateMode,
      keyboardType: keyboardType,
      obscureText: obscureText,
      textAlignVertical: TextAlignVertical.center,
      initialValue: initText,
      enabled: isEnable,
      maxLength: maxLenght,
      style: TextStyle(
          color: fontColor, fontWeight: FontWeight.w400, fontSize: 16),
      decoration: InputDecoration(
          labelText: labelText,
          filled: true,
          fillColor: fillColor,
          hintText: hintText,
          labelStyle: labelStyle ??
              const TextStyle(
                  fontWeight: FontWeight.w400, color: Color(0xFFafb0b2)),
          hintStyle: hintStyle ??
              const TextStyle(
                fontSize: 14.0,
                color: Color.fromRGBO(124, 124, 124, 1),
                fontWeight: FontWeight.w600,
              ),
          prefixIcon: prefixIcon == null
              ? null
              : Icon(
                  prefixIcon,
                  color: const Color.fromRGBO(105, 108, 121, 1),
                ),
          suffixIcon: suffixIcon == null
              ? null
              : InkWell(
                  onTap: onTapSuffix,
                  child: Icon(
                    suffixIcon,
                    color: const Color.fromRGBO(105, 108, 121, 1),
                  ),
                ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: (isEnable)
                ? BorderSide(color: outlineColor, width: 2)
                : BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: (isEnable)
                ? BorderSide(color: focusColor, width: 2)
                : BorderSide.none,
          )),
    );
  }
}
