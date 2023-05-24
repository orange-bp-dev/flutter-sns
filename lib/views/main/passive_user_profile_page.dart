import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_flutter_sns/constants/strings.dart';
import 'package:udemy_flutter_sns/details/rounded_button.dart';
import 'package:udemy_flutter_sns/details/user_image.dart';
import 'package:udemy_flutter_sns/domain/firestore_user/firestore_user.dart';
import 'package:udemy_flutter_sns/models/main_model.dart';
import 'package:udemy_flutter_sns/models/passive_user_profile_model.dart';

class PassiveUserProfilePage extends ConsumerWidget {
  const PassiveUserProfilePage(
      {Key? key, required this.passiveUser, required this.mainModel})
      : super(key: key);

  final FirestoreUser passiveUser;
  final MainModel mainModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passiveUserProfileModel = ref.watch(passiveUserProfileProvider);
    final bool isFollowing = mainModel.followingUids.contains(passiveUser.uid);
    final int plusOneFollowerCount = passiveUser.followerCount + 1;
    return Scaffold(
      appBar: AppBar(
        title: Text(profileTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UserImage(length: 100.0, userImageURL: passiveUser.userImageURL),
            Text(passiveUser.uid),
            Text("フォロー中" + passiveUser.followingCount.toString()),
            Text(isFollowing
                ? "フォロワー" + plusOneFollowerCount.toString()
                : "フォロワー" + passiveUser.followerCount.toString()),
            isFollowing
                ? RoundedButton(
                    onPressed: () async =>
                        await passiveUserProfileModel.unfollow(
                          mainModel: mainModel,
                          passiveFirestoreUser: passiveUser,
                        ),
                    widthRate: 0.85,
                    color: Colors.red,
                    text: "アンフォローする")
                : RoundedButton(
                    onPressed: () => passiveUserProfileModel.follow(
                          mainModel: mainModel,
                          passiveFirestoreUser: passiveUser,
                        ),
                    widthRate: 0.85,
                    color: Colors.green,
                    text: "フォローする")
          ],
        ),
      ),
    );
  }
}
