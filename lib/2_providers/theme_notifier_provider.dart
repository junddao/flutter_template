import '../index.dart';

final themeNotifierProvider =
    ChangeNotifierProvider<ThemeNotifier>((ref) => ThemeNotifier(ref), name: 'themeNotifierProvider');

class ThemeNotifier extends ChangeNotifier {
  ThemeNotifier(this.ref) {
    _init();
  }
  final Ref ref;

  late ThemeMode themeMode;

  /// 초기화
  _init() {
    var index = ref.read(themeRepositoryProvider).getThemeData();
    themeMode = ThemeMode.values[index];
  }

  /// 테마 모드 변경(light<->dark)
  switchThemeMode() {
    if (themeMode == ThemeMode.light) {
      themeMode = ThemeMode.dark;
    } else {
      themeMode = ThemeMode.light;
    }
    notifyListeners();
    // Save the selected theme using shared preferences
    ref.read(themeRepositoryProvider).setThemeData(themeMode);
  }

  /// 테마 모드 설정
  setThemeMode(ThemeMode themeMode) {
    this.themeMode = themeMode;
    notifyListeners();
    // Save the selected theme using shared preferences
    ref.read(themeRepositoryProvider).setThemeData(themeMode);
  }
}
