import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
          title: Text("signup"),
        ),
        body: Column(
          children: [
            TextFormField(
              onChanged: (value) => signupModel.email = value,
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
            ),
            TextFormField(
              onChanged: (value) => signupModel.password = value,
              keyboardType: TextInputType.visiblePassword,
              controller: passwordController,
              obscureText: signupModel.isObscure,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(signupModel.isObscure
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () => signupModel.toggleIsObscure(),
                ),
              ),
            ),
            Center(
              child: signupModel.currentUser == null
                  ? Text("null")
                  : Text("not null"),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async => await signupModel.createUser(context: context),
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ));
  }
}
