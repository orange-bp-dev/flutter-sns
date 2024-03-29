import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_flutter_sns/constants/strings.dart';
import 'package:udemy_flutter_sns/models/main/search_model.dart';
import 'package:udemy_flutter_sns/constants/routes.dart' as routes;
import 'package:udemy_flutter_sns/models/main_model.dart';

class SearchScreen extends ConsumerWidget {
  SearchScreen({Key? key, required this.mainModel}) : super(key: key);
  final MainModel mainModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SearchModel searchModel = ref.watch(searchProvider);
    return ListView.builder(
        itemCount: searchModel.users.length,
        itemBuilder: (context, index) {
          final firestoreUser = searchModel.users[index];
          return ListTile(
            title: Text(firestoreUser.uid),
            onTap: () => routes.toPassiveUserProfilePage(
                context: context,
                passiveUser: firestoreUser,
                mainModel: mainModel),
          );
        });
  }
}
