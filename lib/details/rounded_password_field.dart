import 'package:flutter/material.dart';
import 'package:udemy_flutter_sns/details/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  RoundedPasswordField({
    Key? key,
    required this.color,
    required this.borderColor,
    required this.onChanged,
    required this.passwordEditingController,
    required this.isObsture,
    required this.toggleIsObscure,
  }) : super(key: key);

  final Color color;
  final Color borderColor;
  final void Function(String)? onChanged;
  final TextEditingController? passwordEditingController;
  final bool isObsture;
  final void Function() toggleIsObscure;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      color: color,
      borderColor: borderColor,
      child: TextFormField(
        onChanged: onChanged,
        keyboardType: TextInputType.visiblePassword,
        controller: passwordEditingController,
        obscureText: isObsture,
        decoration: InputDecoration(
          hintText: "Password",
          suffixIcon: IconButton(
            icon: Icon(isObsture ? Icons.visibility_off : Icons.visibility),
            onPressed: toggleIsObscure,
          ),
        ),
      ),
    );
  }
}
