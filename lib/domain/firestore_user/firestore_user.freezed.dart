// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirestoreUser _$FirestoreUserFromJson(Map<String, dynamic> json) {
  return _FirestoreUser.fromJson(json);
}

/// @nodoc
mixin _$FirestoreUser {
  String get email => throw _privateConstructorUsedError;
  dynamic get createdAt => throw _privateConstructorUsedError;
  dynamic get updatedAt => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get userImageURL => throw _privateConstructorUsedError;
  int get followerCount => throw _privateConstructorUsedError;
  int get followingCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestoreUserCopyWith<FirestoreUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreUserCopyWith<$Res> {
  factory $FirestoreUserCopyWith(
          FirestoreUser value, $Res Function(FirestoreUser) then) =
      _$FirestoreUserCopyWithImpl<$Res, FirestoreUser>;
  @useResult
  $Res call(
      {String email,
      dynamic createdAt,
      dynamic updatedAt,
      String userName,
      String uid,
      String userImageURL,
      int followerCount,
      int followingCount});
}

/// @nodoc
class _$FirestoreUserCopyWithImpl<$Res, $Val extends FirestoreUser>
    implements $FirestoreUserCopyWith<$Res> {
  _$FirestoreUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userName = null,
    Object? uid = null,
    Object? userImageURL = null,
    Object? followerCount = null,
    Object? followingCount = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      userImageURL: null == userImageURL
          ? _value.userImageURL
          : userImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      followerCount: null == followerCount
          ? _value.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int,
      followingCount: null == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FirestoreUserCopyWith<$Res>
    implements $FirestoreUserCopyWith<$Res> {
  factory _$$_FirestoreUserCopyWith(
          _$_FirestoreUser value, $Res Function(_$_FirestoreUser) then) =
      __$$_FirestoreUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      dynamic createdAt,
      dynamic updatedAt,
      String userName,
      String uid,
      String userImageURL,
      int followerCount,
      int followingCount});
}

/// @nodoc
class __$$_FirestoreUserCopyWithImpl<$Res>
    extends _$FirestoreUserCopyWithImpl<$Res, _$_FirestoreUser>
    implements _$$_FirestoreUserCopyWith<$Res> {
  __$$_FirestoreUserCopyWithImpl(
      _$_FirestoreUser _value, $Res Function(_$_FirestoreUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userName = null,
    Object? uid = null,
    Object? userImageURL = null,
    Object? followerCount = null,
    Object? followingCount = null,
  }) {
    return _then(_$_FirestoreUser(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      userImageURL: null == userImageURL
          ? _value.userImageURL
          : userImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      followerCount: null == followerCount
          ? _value.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int,
      followingCount: null == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FirestoreUser implements _FirestoreUser {
  const _$_FirestoreUser(
      {required this.email,
      required this.createdAt,
      required this.updatedAt,
      required this.userName,
      required this.uid,
      required this.userImageURL,
      required this.followerCount,
      required this.followingCount});

  factory _$_FirestoreUser.fromJson(Map<String, dynamic> json) =>
      _$$_FirestoreUserFromJson(json);

  @override
  final String email;
  @override
  final dynamic createdAt;
  @override
  final dynamic updatedAt;
  @override
  final String userName;
  @override
  final String uid;
  @override
  final String userImageURL;
  @override
  final int followerCount;
  @override
  final int followingCount;

  @override
  String toString() {
    return 'FirestoreUser(email: $email, createdAt: $createdAt, updatedAt: $updatedAt, userName: $userName, uid: $uid, userImageURL: $userImageURL, followerCount: $followerCount, followingCount: $followingCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirestoreUser &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.userImageURL, userImageURL) ||
                other.userImageURL == userImageURL) &&
            (identical(other.followerCount, followerCount) ||
                other.followerCount == followerCount) &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      userName,
      uid,
      userImageURL,
      followerCount,
      followingCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirestoreUserCopyWith<_$_FirestoreUser> get copyWith =>
      __$$_FirestoreUserCopyWithImpl<_$_FirestoreUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FirestoreUserToJson(
      this,
    );
  }
}

abstract class _FirestoreUser implements FirestoreUser {
  const factory _FirestoreUser(
      {required final String email,
      required final dynamic createdAt,
      required final dynamic updatedAt,
      required final String userName,
      required final String uid,
      required final String userImageURL,
      required final int followerCount,
      required final int followingCount}) = _$_FirestoreUser;

  factory _FirestoreUser.fromJson(Map<String, dynamic> json) =
      _$_FirestoreUser.fromJson;

  @override
  String get email;
  @override
  dynamic get createdAt;
  @override
  dynamic get updatedAt;
  @override
  String get userName;
  @override
  String get uid;
  @override
  String get userImageURL;
  @override
  int get followerCount;
  @override
  int get followingCount;
  @override
  @JsonKey(ignore: true)
  _$$_FirestoreUserCopyWith<_$_FirestoreUser> get copyWith =>
      throw _privateConstructorUsedError;
}
