import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_flutter_sns/models/main_model.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  const String title = "Flutter Demo";
  runApp(ProviderScope(child: MyApp(title: title)));
}

class MyApp extends StatelessWidget {
  MyApp({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Torememo'),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  MyHomePage({Key? key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MainModel mainModel = ref.watch(mainProvider);
    final TextEditingController emailController =
        TextEditingController(text: mainModel.email);
    final TextEditingController passwordController =
        TextEditingController(text: mainModel.password);
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          children: [
            TextFormField(
              onChanged: (value) => mainModel.email = value,
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
            ),
            TextFormField(
              onChanged: (value) => mainModel.password = value,
              keyboardType: TextInputType.visiblePassword,
              controller: passwordController,
              obscureText: mainModel.isObscure,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(mainModel.isObscure
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () => mainModel.toggleIsObscure(),
                ),
              ),
            ),
            Center(
              child: mainModel.currentUser == null
                  ? Text("null")
                  : Text("not null"),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async => await mainModel.createUser(context: context),
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ));
  }
}
