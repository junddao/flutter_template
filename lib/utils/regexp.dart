import 'package:smatii/index.dart';

/// 정규식 클래스
class TSRegExp {
  TSRegExp._();

  /// 이메일 정규식
  static RegExp email =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$'
          .toRegExp();

  /// 핸드폰번호 정규식
  static RegExp smartphone = r'^([ \-]?)?0?1([0]{1})[ \-]?\d{4}[ \-]?\d{4}$'.toRegExp();

  /// 소문자 영문 정규식
  static RegExp lower = r'(?=.*[a-z])'.toRegExp();

  /// 대문자 영문 정규식
  static RegExp upper = r'(?=.*[A-Z])'.toRegExp();

  /// 한글 & 영문 & 숫자 정규식
  static RegExp test = r'^[가-힣a-z0-9]+$'.toRegExp();

  /// URL 정규식
  static RegExp url = r"[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{2,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?".toRegExp();

  /// 한글 정규식
  static RegExp korean = r'[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]'.toRegExp();

  /// 생년월일(6자리) 정규식
  static RegExp birthday = r'([0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[1,2][0-9]|3[0,1]))'.toRegExp();

  /// 이름
  static RegExp name = r'[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣|ᆞ|ᆢ|ㆍ|ᆢ|ᄀᆞ|ᄂᆞ|ᄃᆞ|ᄅᆞ|ᄆᆞ|ᄇᆞ|ᄉᆞ|ᄋᆞ|ᄌᆞ|ᄎᆞ|ᄏᆞ|ᄐᆞ|ᄑᆞ|ᄒᆞ]'.toRegExp();

  /// 패스워드 (영문 | 숫자 | 특수문자이면서 6글자 이상 18글자 이하) 정규식
  static RegExp password = r'''[\da-zA-Z\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\("']'''.toRegExp();
}
