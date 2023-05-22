// flutter
import 'package:flutter/material.dart';
// package
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:udemy_flutter_sns/details/bottom_navigation_bar.dart';
import 'package:udemy_flutter_sns/views/login_page.dart';
// models
import 'models/main_model.dart';
import 'package:udemy_flutter_sns/models/bottom_navigation_bar_model.dart';
// options
import 'firebase_options.dart';
// constants
import 'package:udemy_flutter_sns/constants/strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // MyAppが起動した最初の時にユーザーがログインしているかどうかの確認
    // この変数を1回きり
    final User? onceUser = FirebaseAuth.instance.currentUser;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: onceUser == null
          ? const LoginPage()
          : const MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MainModel mainModel = ref.watch(mainProvider);
    final SNSBottomNavigationBarModel snsBottomNavigationBarModel =
        ref.watch(snsBottomNavigationBarProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: mainModel.isLoading
          ? const Center(
              child: Text(loadingText),
            )
          : PageView(
              controller: snsBottomNavigationBarModel.pageController,
              onPageChanged: (index) =>
                  snsBottomNavigationBarModel.onPageChanged(index: index),
              // childrenの個数はElementsの数
              children: [
                // 注意：ページじゃないのでScaffold
                Container(
                  child: Text(homeText),
                ),
                Container(
                  child: Text(searchText),
                ),
                Container(
                  child: Text(profileText),
                ),
              ],
            ),
      bottomNavigationBar: SNSBottomNavigationBar(
          snsBottomNavigationBarModel: snsBottomNavigationBarModel),
    );
  }
}

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:udemy_flutter_sns/constants/strings.dart';
// import 'package:udemy_flutter_sns/details/bottom_navigation_bar.dart';
// import 'package:udemy_flutter_sns/details/rounded_button.dart';
// import 'package:udemy_flutter_sns/models/bottom_navigation_bar_model.dart';
// import 'package:udemy_flutter_sns/models/main_model.dart';
// import 'package:udemy_flutter_sns/constants/routes.dart' as routes;

// import 'package:firebase_core/firebase_core.dart';
// import 'package:udemy_flutter_sns/views/login_page.dart';
// import 'firebase_options.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   const String title = "Flutter Demo";
//   runApp(ProviderScope(child: MyApp()));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final User? onceUser = FirebaseAuth.instance.currentUser;
//     return MaterialApp(
//       // debugShowCheckedModeBanner: false,
//       title: appTitle,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: onceUser == null ? LoginPage() : MyHomePage(title: appTitle),
//     );
//   }
// }

// class MyHomePage extends ConsumerWidget {
//   MyHomePage({Key? key, required this.title});

//   final String title;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // MainModelのinit()が実行される
//     final MainModel mainModel = ref.watch(mainProvider);
//     final BottomNavigationBarModel bottomNavigationBarModel =
//         ref.watch(bottomNavigationBarProvider);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: mainModel.isLoading
//           ? Center(
//               child: Text(loadingText),
//             )
//           : Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Center(
//                       child: Column(
//                     children: [
//                       Text("私の名前は${mainModel.currentUserDoc['userName']}です"),
//                       Text("私の名前は${mainModel.currentUserDoc['uid']}です"),
//                     ],
//                   )),
//                   // RoundedButton(
//                   //     onPressed: () => routes.toSignupPage(context: context),
//                   //     widthRate: 0.5,
//                   //     color: Colors.blue,
//                   //     text: signupText),
//                   // RoundedButton(
//                   //     onPressed: () => routes.toLoginPage(context: context),
//                   //     widthRate: 0.5,
//                   //     color: Colors.blue,
//                   //     text: loginText),
//                   RoundedButton(
//                       onPressed: () async =>
//                           await mainModel.logout(context: context),
//                       widthRate: 0.85,
//                       color: Colors.blue,
//                       text: logoutText),
//                   // Center(
//                   //   child: Text("not null"),
//                   // ),
//                   // PageView(
//                   //   controller: bottomNavigationBarModel.pageController,
//                   //   onPageChanged: (idx) =>
//                   //       bottomNavigationBarModel.onPageChanged(index: idx),
//                   //   children: [
//                   //     // Container(
//                   //     //   child: Text("Home"),
//                   //     // ),
//                   //     // Container(
//                   //     //   child: Text("Search"),
//                   //     // ),
//                   //     // Container(child: Text("Profile")),
//                   //   ],
//                   // ),
//                 ],
//               ),
//             ),
//       bottomNavigationBar: SNSBottomNavigationBar(
//         bottomNavigationBarModel: bottomNavigationBarModel,
//       ),
//     );
//   }
// }
