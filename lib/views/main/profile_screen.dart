// flutter
import 'package:flutter/material.dart';
// packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_flutter_sns/constants/strings.dart';
import 'package:udemy_flutter_sns/details/rounded_button.dart';
// components
import 'package:udemy_flutter_sns/details/user_image.dart';
import 'package:udemy_flutter_sns/domain/firestore_user/firestore_user.dart';
import 'package:udemy_flutter_sns/models/main/profile_model.dart';
// models
import 'package:udemy_flutter_sns/models/main_model.dart';
import 'package:udemy_flutter_sns/models/passive_user_profile_model.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({Key? key, required this.mainModel}) : super(key: key);
  final MainModel mainModel;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ProfileModel profileModel = ref.watch(profileProvider);
    final PassiveUserProfileModel passiveUserProfileModel =
        ref.watch(passiveUserProfileProvider);
    final FirestoreUser firestoreUser = mainModel.firestoreUser;
    final int followerCount = firestoreUser.followerCount;
    final int plusOneFollowerCount = followerCount + 1;
    final bool isFollowing =
        mainModel.followingUids.contains(firestoreUser.uid);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        profileModel.croppedFile == null
            ? UserImage(
                length: 100.0,
                userImageURL: firestoreUser.userImageURL,
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(160.0),
                child: Image.file(profileModel.croppedFile!),
              ),
        Text("フォロー中" + firestoreUser.followingCount.toString()),
        Text(isFollowing
            ? "フォロワー" + plusOneFollowerCount.toString()
            : "フォロワー" + firestoreUser.followerCount.toString()),
        RoundedButton(
            onPressed: () async => await profileModel.uploadUserImage(
                currentUserDoc: mainModel.currentUserDoc),
            widthRate: 0.85,
            color: Colors.green,
            text: uploadText),
      ],
    );
  }
}
