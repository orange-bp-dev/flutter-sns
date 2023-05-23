// flutter
import 'package:flutter/material.dart';
// packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_flutter_sns/details/rounded_button.dart';
// components
import 'package:udemy_flutter_sns/details/user_image.dart';
import 'package:udemy_flutter_sns/models/main/profile_model.dart';
// models
import 'package:udemy_flutter_sns/models/main_model.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({Key? key, required this.mainModel}) : super(key: key);
  final MainModel mainModel;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ProfileModel profileModel = ref.watch(profileProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        profileModel.croppedFile == null
            ? UserImage(
                length: 100.0,
                userImageURL: mainModel.firestoreUser.userImageURL,
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(160.0),
                child: Image.file(profileModel.croppedFile!),
              ),
        RoundedButton(
            onPressed: () async => await profileModel.uploadUserImage(
                currentUserDoc: mainModel.currentUserDoc),
            widthRate: 0.85,
            color: Colors.green,
            text: "Upload")
      ],
    );
  }
}
