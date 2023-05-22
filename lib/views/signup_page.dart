import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_flutter_sns/constants/strings.dart';
import 'package:udemy_flutter_sns/details/rouded_textfield.dart';
import 'package:udemy_flutter_sns/details/rounded_button.dart';
import 'package:udemy_flutter_sns/details/rounded_password_field.dart';
import '../models/signup_model.dart';

class SignupPage extends ConsumerWidget {
  const SignupPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SignupModel signupModel = ref.watch(signupProvider);
    final TextEditingController emailController =
        TextEditingController(text: signupModel.email);
    final TextEditingController passwordController =
        TextEditingController(text: signupModel.password);
    return Scaffold(
      appBar: AppBar(
        title: Text(signupText),
      ),
      body: Column(
        children: [
          RoundedTextField(
            onChanged: (value) => signupModel.email = value,
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            color: Colors.white,
            borderColor: Colors.black,
            hintText: mailAddressText,
          ),
          RoundedPasswordField(
            color: Colors.white,
            borderColor: Colors.black,
            onChanged: (value) => signupModel.password = value,
            passwordEditingController: passwordController,
            isObsture: signupModel.isObscure,
            toggleIsObscure: signupModel.toggleIsObscure,
          ),
          RoundedButton(
            onPressed: () async =>
                await signupModel.createUser(context: context),
            widthRate: 0.85,
            color: Colors.red,
            text: signupText,
          )
        ],
      ),
    );
  }
}
