import 'dart:io';

class TSFontFamily{
  /// 국문용 폰트
  static const String koreanFontFamily = "Pretendard";
  
  /// 영문용 폰트
  static final String englishFontFamily = Platform.isAndroid ? "Helvetica" : "SFPro";
}