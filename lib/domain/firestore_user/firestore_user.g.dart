// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FirestoreUser _$$_FirestoreUserFromJson(Map<String, dynamic> json) =>
    _$_FirestoreUser(
      email: json['email'] as String,
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      userName: json['userName'] as String,
      uid: json['uid'] as String,
      userImageURL: json['userImageURL'] as String,
      followerCount: json['followerCount'] as int,
      followingCount: json['followingCount'] as int,
    );

Map<String, dynamic> _$$_FirestoreUserToJson(_$_FirestoreUser instance) =>
    <String, dynamic>{
      'email': instance.email,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'userName': instance.userName,
      'uid': instance.uid,
      'userImageURL': instance.userImageURL,
      'followerCount': instance.followerCount,
      'followingCount': instance.followingCount,
    };
