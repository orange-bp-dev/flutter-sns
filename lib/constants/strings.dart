import 'package:uuid/uuid.dart';

// titles
const String appTitle = "SNS";
const String signupTitle = "新規登録";
const String loginTitle = "ログイン";
const String profileTitle = "プロフィール";
// texts
const String mailAddressText = "メールアドレス";
const String passwordText = "パスワード";
const String signupText = "新規登録を行う";
const String loginText = "ログインする";
const String logoutText = "ログアウトを行う";
// FieldKey
const String usersFieldKey = "users";
// message
const String userCreatedMsg = "ユーザーが作成できました";
const String noAccountMsg = "アカウントをお持ちでない場合";
const String loadingText = "Loading";

// bottom navigation bar
const String homeText = "Home";
const String searchText = "Search";
const String profileText = "Profile";

const String uploadText = "アップロードする";

// Title
const String accountTitle = "Account";
const String themeTitle = "テーマ";
const String cropperTitle = "編集";

String returnUuidV4() {
  const Uuid uuid = Uuid();
  return uuid.v4();
}

String returnJpgFileName() => "${returnUuidV4()}.jpg";

// shared_preferences_keys

String isDarkThemePrefsKey = "isDarkTheme";
