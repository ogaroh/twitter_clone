import 'package:flutter/material.dart';
import 'package:mobile/constants/colors.dart';
import 'package:mobile/theme.dart';

class UnderlinedTextIeld extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? inputType;
  final String labelText;
  const UnderlinedTextIeld(
      {this.inputType,
      required this.labelText,
      required this.controller,
      super.key});
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      style: const TextStyle(color: kBrandMain),
      decoration: InputDecoration(
        labelText: labelText,
        floatingLabelStyle: labelTextStyle,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffd3d3d3),
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffd3d3d3),
          ),
        ),
      ),
    );
  }
}
