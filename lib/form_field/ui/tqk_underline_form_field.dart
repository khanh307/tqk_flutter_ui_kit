import 'package:flutter/material.dart';

class TQKUnderlineFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final IconData? suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final IconData? prefixIcon;
  final Color fontColor;

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

  const TQKUnderlineFormField({
    super.key,
    this.hintText,
    this.obscureText = false,
    this.isEnable = true,
    this.fontColor = Colors.black,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLines = 1,
    this.minLines = 1,
    this.initText,
    this.maxLenght,
    this.keyboardType = TextInputType.text,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.controller,
    this.onTapSuffix,
    this.validator,
    this.labelText,
    this.onChanged,
    this.onTap,
    this.onTapOutside,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: minLines,
      maxLines: maxLines,
      onTapOutside: onTapOutside,
      validator: (validator != null)
          ? (value) {
              return validator!(value);
            }
          : null,
      onChanged: onChanged,
      onTap: onTap,
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
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          labelText: labelText,
          labelStyle: const TextStyle(
              fontWeight: FontWeight.w400, color: Color(0xFFafb0b2)),
          hintStyle: const TextStyle(
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
          border: UnderlineInputBorder(
            borderSide: (isEnable)
                ? const BorderSide(color: Color(0xFF919191), width: 2)
                : BorderSide.none,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: (isEnable)
                ? const BorderSide(color: Color(0xFF919191), width: 2)
                : BorderSide.none,
          )),
    );
  }
}
