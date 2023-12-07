import 'package:flutter/material.dart';

class TQKOutlineDropdown extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final IconData? prefixIcon;
  final Widget? dropdownIcon;
  final Function(dynamic value) onChange;
  final Function(dynamic)? validator;
  final List<DropdownMenuItem> items;
  final Color? fillColor;
  final bool isExpanded;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final TextStyle? labelStyle;
  final Color outlineColor;
  final Color focusColor;
  final double radius;
  dynamic value;

  TQKOutlineDropdown(
      {super.key,
      this.hintText,
      this.validator,
      this.prefixIcon,
      required this.items,
      this.isExpanded = true,
      this.outlineColor = const Color(0xFFafb0b2),
      this.focusColor = const Color(0xFFafb0b2),
      this.radius = 5.0,
      this.value,
      required this.onChange,
      this.hintStyle,
      this.textStyle,
      this.labelStyle,
      this.labelText,
      this.fillColor,
      this.dropdownIcon});

  @override
  State<TQKOutlineDropdown> createState() => _TQKOutlineDropdownState();
}

class _TQKOutlineDropdownState extends State<TQKOutlineDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      validator: (widget.validator != null)
          ? (dynamic value) {
              return widget.validator!(value);
            }
          : null,
      value: widget.value,
      isExpanded: widget.isExpanded,
      menuMaxHeight: 400,
      icon: widget.dropdownIcon,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        labelStyle: widget.labelStyle ??
            const TextStyle(
              height: 1,
              fontSize: 14.0,
              color: Color.fromRGBO(124, 124, 124, 1),
              fontWeight: FontWeight.w600,
            ),
        floatingLabelStyle: const TextStyle(
          height: 1,
          fontSize: 16.0,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: BorderSide(color: widget.outlineColor, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: BorderSide(color: widget.focusColor, width: 2),
        ),
        fillColor: widget.fillColor ?? Colors.white,
        filled: true,
        prefixIcon: widget.prefixIcon == null
            ? null
            : Icon(
                widget.prefixIcon,
                color: widget.outlineColor,
              ),
        hintStyle: widget.hintStyle ??
            const TextStyle(
              height: 1,
              fontSize: 14.0,
              color: Color.fromRGBO(124, 124, 124, 1),
              fontWeight: FontWeight.w600,
            ),
      ),
      items: widget.items,
      onChanged: (value) {
        widget.onChange(value);
        setState(() {
          widget.value = value;
        });
      },
    );
  }
}
