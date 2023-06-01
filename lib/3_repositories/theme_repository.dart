
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smatii/4_datasource/local/shared_preferences_provider.dart';

final themeRepositoryProvider = Provider<ThemeRepository>((ref) {
  return ThemeRepository(ref);
});


class ThemeRepository {

  final Ref ref;

  ThemeRepository(this.ref);

  /// 테마데이터
  int getThemeData(){
    var result = ref.watch(sharedPreferencesProvider).getInt(SharedPreferencesKey.theme.name) ?? ThemeMode.light.index;
    return result;
  }

  /// 테마데이터 설정
  void setThemeData(ThemeMode themeMode){
    ref.read(sharedPreferencesProvider).setInt(SharedPreferencesKey.theme.name, themeMode.index);
  }
}