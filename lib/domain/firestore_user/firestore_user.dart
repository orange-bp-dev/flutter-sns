import 'package:freezed_annotation/freezed_annotation.dart';
part 'firestore_user.freezed.dart';
part 'firestore_user.g.dart';

@freezed
abstract class FirestoreUser with _$FirestoreUser {
  const factory FirestoreUser({
    required String email,
    required dynamic createdAt,
    required dynamic updatedAt,
    required String userName,
    required String uid,
    required String userImageURL,
    required int followerCount,
    required int followingCount,
  }) = _FirestoreUser;
  factory FirestoreUser.fromJson(Map<String, dynamic> json) =>
      _$FirestoreUserFromJson(json);
}
