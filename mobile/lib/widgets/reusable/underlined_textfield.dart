import 'package:flutter/material.dart';

class UnderlinedTextIeld extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  const UnderlinedTextIeld(this.labelText, this.controller, {super.key});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(labelText: labelText),
    );
  }
}
