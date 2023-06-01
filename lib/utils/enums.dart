// ignore_for_file: constant_identifier_names

import 'package:dio/dio.dart';
import 'package:smatii/index.dart';

enum AuthState {
  authorized,
  unauthorized,
  error,
}

enum NetworkState {
  initial,
  success,
  failure,
}

enum UrlType {
  internet('인터넷'),
  tel('전화'),
  sms('문자'),
  email('이메일');

  final String value;

  const UrlType(this.value);

  @override
  String toString() {
    return value;
  }
}

// TODO: 추후에 message 추가
/// 네트워크 상태코드
enum NetworkStatusCode {
  /// 성공
  ok(200, '200 error'),

  /// 생성 성공
  created(201, '201 error'),

  /// 잘못된 요청
  badRequest(400, '400 error'),

  /// 권한 없음
  unauthorized(401, 'INVALID_ACCESS_TOKEN'),

  /// 접근 금지
  forbidden(403, '403 error'),

  /// 찾을 수 없음
  notFound(404, '404 error'),

  /// 내부 서버 오류
  internalServerError(500, '500 error'),

  /// 구현되지 않음
  notImplemented(501, '501 error');

  const NetworkStatusCode(this.code, this.message);

  final int code;
  final String message;

  static int getNetworkStatusCode(DioError err) {
    if (err.error == NetworkStatusCode.ok.message) {
      return NetworkStatusCode.ok.code;
    } else if (err.error == NetworkStatusCode.created.message) {
      return NetworkStatusCode.created.code;
    } else if (err.error == NetworkStatusCode.badRequest.message) {
      return NetworkStatusCode.badRequest.code;
    } else if (err.error == NetworkStatusCode.unauthorized.message) {
      return NetworkStatusCode.unauthorized.code;
    } else if (err.error == NetworkStatusCode.forbidden.message) {
      return NetworkStatusCode.forbidden.code;
    } else if (err.error == NetworkStatusCode.notFound.message) {
      return NetworkStatusCode.notFound.code;
    } else if (err.error == NetworkStatusCode.internalServerError.message) {
      return NetworkStatusCode.internalServerError.code;
    } else if (err.error == NetworkStatusCode.notImplemented.message) {
      return NetworkStatusCode.notImplemented.code;
    } else {
      return err.response?.statusCode ?? 404;
    }
  }

  @override
  String toString() {
    return 'Error(code:$code, message:$message)';
  }
}

enum SortBy {
  ID,
  NAME,
  POPULAR,
  DATETIME,
  SEQUENCE,
}

enum SortDirection {
  ASC,
  DESC,
}

enum UtmDeviceType {
  UNMANNED_AIRCRAFT,
  UNMANNED_HELICOPTER,
  UNMANNED_MULTICOPTER,
  UNMANNED_AIRSHIP,
}

enum UtmUimStatus {
  REQUESTED,
  APPROVED,
  REJECTED,
  IN_OPERATION,
  EXPIRED,
  CANCELED,
  FINISHED,
}

/// 하늘 상태
enum SkyStatusCode {
  CLEAR,
  CLOUDY,
  OVERCAST,
}

/// 강수 형태
enum PrecipitationTypeCode {
  NO_INFO('알 수 없음', TSImages.weather1),
  NONE('맑음', TSImages.weather1),
  RAIN('비', TSImages.weather2),
  RAIN_AND_SNOW('눈과비', TSImages.weather2),
  SNOW('눈', TSImages.weather2),
  DRIZZLE('이슬비', TSImages.weather2),
  DRIZZLE_AND_SNOW_FLURRY('이슬비와 눈보라', TSImages.weather2),
  SNOW_FLURRY('눈보라', TSImages.weather2);

  final String title;
  final String imagePath;

  const PrecipitationTypeCode(this.title, this.imagePath);
}

/// 풍향 코드
enum WindDirectionCode {
  N,
  NNE,
  NE,
  ENE,
  E,
  ESE,
  SE,
  SSE,
  S,
  SSW,
  SW,
  WSW,
  W,
  WNW,
  NW,
  NNW,
}

/// sign up screen type
enum SignUpScreenType {
  agreement,
  profile,
  email,
  phone,
}

/// 공역 유형
enum UtmAirspaceType {
  /// 비행허용구역
  FLY_ZONE('비행허용구역', TSColors.etcFFFFFF),

  /// 비행금지구역
  NO_FLY_ZONE('비행금지구역', TSColors.etcFF0000),

  /// 관제권(공항주변)
  CONTROLLED_AIRSPACE('관제권(공항주변)', TSColors.etcD09718),

  /// 비행제한구역
  FLIGHT_RESTRICTED_AREA('비행제한구역', TSColors.etcFFA700),

  /// 위험구역
  DANGER_ZONE('위험구역', TSColors.etcE000AC),

  /// 군작전공역
  MILITARY_OPERATION_AIRSPACE('군작전공역', TSColors.etc585858),

  /// 비행장교통구역
  AIRFIELD_TRAFFIC_AREA('비행장교통구역', TSColors.etc4AC466),

  /// 초경량 비행공역
  ULTRALIGHT_VEHICLE_FLIGHT_AIRSPACE('초경량비행장치\n비행공역', TSColors.etc3CB4FF),

  /// 시범사업공역
  PILOT_PROJECT_AIRSPACE('시범사업공역', TSColors.etc330099);

  final String title;
  final Color color;

  const UtmAirspaceType(this.title, this.color);
}

/// 지구자기장 지수
enum KindexType {
  safety(Colors.green, '안전', '4이하'),
  precautions(Colors.orange, '주의', '5'),
  warning(Colors.red, '금지', '6이상 (운행금지 / 수동조작)');

  final String title;
  final Color color;
  final String description;

  const KindexType(this.color, this.title, this.description);
}

enum ViolationType {
  ENTERED_NO_FLY_ZONE,
  OUT_OF_FLIGHT_AREA,
  OUT_OF_FLIGHT_ALTITUDE_LIMITS,
  UNAPPROVED_FLIGHT_PERIOD,
  NO_UIM_USAGE_PERIOD,
}
