import 'package:flutter/material.dart';
import 'package:udemy_flutter_sns/details/text_field_container.dart';

class RoundedTextField extends StatelessWidget {
  RoundedTextField({
    Key? key,
    required this.keyboardType,
    required this.onChanged,
    required this.controller,
    required this.color,
    required this.borderColor,
    required this.hintText,
  }) : super(key: key);

  final Color color;
  final Color borderColor;
  final TextInputType keyboardType;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        color: color,
        borderColor: borderColor,
        child: TextField(
            keyboardType: keyboardType,
            onChanged: onChanged,
            controller: controller,
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              hintText: hintText,
              border: InputBorder.none,
            )));
  }
}
