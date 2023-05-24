import 'package:flutter/material.dart';
import 'package:udemy_flutter_sns/constants/strings.dart';
import 'package:udemy_flutter_sns/models/main_model.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key, required this.mainModel});
  final MainModel mainModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(accountTitle)),
      body: ListView(
        children: [
          ListTile(
            title: Text(logoutText),
            onTap: () async => await mainModel.logout(context: context),
          )
        ],
      ),
    );
  }
}
