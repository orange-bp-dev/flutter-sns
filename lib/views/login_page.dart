import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_flutter_sns/models/login_model.dart';
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
          title: Text("login"),
        ),
        body: Column(
          children: [
            TextFormField(
              onChanged: (value) => loginModel.email = value,
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
            ),
            TextFormField(
              onChanged: (value) => loginModel.password = value,
              keyboardType: TextInputType.visiblePassword,
              controller: passwordController,
              obscureText: loginModel.isObscure,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(loginModel.isObscure
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () => loginModel.toggleIsObscure(),
                ),
              ),
            ),
            Center(
              child: loginModel.currentUser == null
                  ? Text("null")
                  : Text("not null"),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async => await loginModel.login(context: context),
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ));
  }
}
