import 'package:flutter/material.dart';

class TQKOutlineDropdown extends StatefulWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final Function onChange;
  final Function(dynamic)? validator;
  final List<DropdownMenuItem> items;
  final bool isExpanded;
  final Color outlineColor;
  final Color focusColor;
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
        this.value,
        required this.onChange});

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
      decoration: InputDecoration(
        labelText: widget.hintText,
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: widget.outlineColor, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: widget.focusColor, width: 2),
        ),
        fillColor: Colors.white,
        filled: true,
        prefixIcon: widget.prefixIcon == null
            ? null
            : Icon(
          widget.prefixIcon,
          color: const Color.fromRGBO(105, 108, 121, 1),
        ),
        hintStyle: const TextStyle(
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
