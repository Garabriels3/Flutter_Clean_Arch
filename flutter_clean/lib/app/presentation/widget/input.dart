import 'package:bytebank/core/values/fonts.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final Icon icon;

  InputWidget({this.controller, this.label, this.hint, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(SIXTEEN_SIZE),
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: TWENTY_FOUR_SIZE),
        decoration: InputDecoration(
            icon: icon != null ? icon : null, labelText: label, hintText: hint),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
