import 'package:smatii/index.dart';
import 'package:smatii/themes/font_family.dart';

extension TextStyleColorExtension on TextStyle {
  TextStyle get primary => copyWith(color: TSColors.flyBlue700);
  TextStyle get flyBlue400 => copyWith(color: TSColors.flyBlue400);
  TextStyle get flyBlue500 => copyWith(color: TSColors.flyBlue500);
  TextStyle get flyBlue600 => copyWith(color: TSColors.flyBlue600);
  TextStyle get flyBlue700 => copyWith(color: TSColors.flyBlue700);
  TextStyle get flyGrey300 => copyWith(color: TSColors.flyGrey300);
  TextStyle get flyGrey400 => copyWith(color: TSColors.flyGrey400);
  TextStyle get flyGrey500 => copyWith(color: TSColors.flyGrey500);
  TextStyle get flyGrey600 => copyWith(color: TSColors.flyGrey600);
  TextStyle get flyGrey700 => copyWith(color: TSColors.flyGrey700);
  TextStyle get flyGrey800 => copyWith(color: TSColors.flyGrey800);
  TextStyle get flyWhite => copyWith(color: Colors.white);
  TextStyle get flyBlack => copyWith(color: Colors.black);
  TextStyle get etcRed => copyWith(color: TSColors.etcFF3100);
  TextStyle get etcNavy => copyWith(color: TSColors.etc3F4F76);
  TextStyle get etc707070 => copyWith(color: TSColors.etc707070);
  TextStyle get customGrayCB => copyWith(color: TSColors.etcCBCBCB);
}

extension TextStyleWeightExtension on TextStyle {
  TextStyle get thin => copyWith(fontWeight: TSFontWeight.thin);
  TextStyle get extraRight => copyWith(fontWeight: TSFontWeight.extraLight);
  TextStyle get light => copyWith(fontWeight: TSFontWeight.light);
  TextStyle get regular => copyWith(fontWeight: TSFontWeight.regular);
  TextStyle get medium => copyWith(fontWeight: TSFontWeight.medium);
  TextStyle get semiBold => copyWith(fontWeight: TSFontWeight.semiBold);
  TextStyle get bold => copyWith(fontWeight: TSFontWeight.bold);
  TextStyle get extraBold => copyWith(fontWeight: TSFontWeight.extraBold);
  TextStyle get heavy => copyWith(fontWeight: TSFontWeight.heavy);
  TextStyle get black => copyWith(fontWeight: TSFontWeight.black);
}

extension TextStyleFontFamillyExtension on TextStyle {
  /// 국문용 폰트패밀리로 변경
  TextStyle get koreanFontFamily => copyWith(fontFamily: TSFontFamily.koreanFontFamily);

  /// 영문용 폰트패밀리로 변경
  TextStyle get englishFontFamily => copyWith(fontFamily: TSFontFamily.englishFontFamily);
}

extension TextStyleLetterSpacingExtension on TextStyle {

  /// 텍스트용 글자 간격(0) 
  TextStyle get textLetterSpacing => copyWith(letterSpacing: 0);

  /// 버튼용 글자 간격(-30)
  TextStyle get buttonTextLetterSpacing => copyWith(letterSpacing: -30);
}

extension TextStyleHeightExtension on TextStyle {

  /// 글자 높이 조절
  ///
  /// height 1.0
  TextStyle get h1_0 => copyWith(height: 1.0);

  /// 글자 높이 조절
  ///
  /// height 1.5
  TextStyle get h1_5 => copyWith(height: 1.5);

  /// 글자 높이 조절
  ///
  /// height 2.0
  TextStyle get h2_0 => copyWith(height: 2.0);
}