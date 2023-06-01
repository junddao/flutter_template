import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// 내부 스토리지
final sharedPreferencesProvider = Provider<SharedPreferences>(
  (ref) => throw UnimplementedError(),
  name: 'sharedPreferencesProvider',
);

/// 스토리지 키 값
enum SharedPreferencesKey {
  /// bool 데이터
  isFirstStart,
  /// string 데이터
  accessToken,
  /// string 데이터
  refreshToken,
  /// int 데이터
  theme
}
