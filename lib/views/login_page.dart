import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_flutter_sns/constants/strings.dart';
import 'package:udemy_flutter_sns/details/rouded_textfield.dart';
import 'package:udemy_flutter_sns/details/rounded_button.dart';
import 'package:udemy_flutter_sns/details/rounded_password_field.dart';
import 'package:udemy_flutter_sns/models/login_model.dart';
import 'package:udemy_flutter_sns/models/main_model.dart';
import '../models/signup_model.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final LoginModel loginModel = ref.watch(loginProvider);
    final TextEditingController emailController =
        TextEditingController(text: loginModel.email);
    final TextEditingController passwordController =
        TextEditingController(text: loginModel.password);
    return Scaffold(
      appBar: AppBar(
        title: Text(loginTitle),
      ),
      body: Column(
        children: [
          RoundedTextField(
            onChanged: (value) => loginModel.email = value,
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            color: Colors.white,
            borderColor: Colors.black,
            hintText: mailAddressText,
          ),
          RoundedPasswordField(
            color: Colors.white,
            borderColor: Colors.black,
            onChanged: (value) => loginModel.password = value,
            passwordEditingController: passwordController,
            isObsture: loginModel.isObscure,
            toggleIsObscure: loginModel.toggleIsObscure,
          ),
          RoundedButton(
            onPressed: () async => await loginModel.login(context: context),
            widthRate: 0.85,
            color: Colors.green,
            text: loginText,
          )
        ],
      ),
    );
  }
}
