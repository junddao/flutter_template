import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:smatii/index.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  // UTM UMS Verification

  /// 사용자 이메일 인증 이메일 발송
  @POST('/ums/verification/email')
  Future<DataResponse<SuccessResponse>> postVerificationEmail(@Body() UtmUmsSendVerificationEmailRequest request);

  /// 사용자 이메일 인증 이메일 확인
  @PATCH('/ums/verification/email/verified')
  Future<DataResponse<UtmUmsVerifyVerificationEmailResponse>> patchVerificationEmailVerified(
      @Body() UtmUmsVerifyVerificationEmailRequest request);

  /// 사용자 휴대 전화 번호 인증 SMS 발송
  @POST('/ums/verification/phone')
  Future<DataResponse<SuccessResponse>> postVerificationPhone(@Body() UtmUmsSendVerificationPhoneRequest request);

  /// 사용자 휴대 전화 번호 인증 SMS 확인
  @PATCH('/ums/verification/phone/verified')
  Future<DataResponse<UtmUmsVerifyVerificationPhoneResponse>> patchVerificationPhoneVerified(
      @Body() UtmUmsVerifyVerificationPhoneRequest request);

  // UTM UMS User Sign

  /// 사용자 로그인
  @POST('/ums/user/sign/in')
  Future<DataResponse<UtmUmsUserSignInResponse>> postUserSignIn(@Body() UtmUmsUserSignInRequest request);

  /// 사용자 가입
  @POST('/ums/user/sign/up')
  Future<DataResponse<UtmUmsUserSignInResponse>> postUserSignUp(@Body() UtmUmsUserSignUpRequest request);

  /// 사용자 인증 정보 갱신
  @PATCH('/ums/user/sign/refresh')
  Future<DataResponse<UtmUmsUserSignInResponse>> patchUserSignRefresh(@Body() UtmUmsRefreshUserSignRequest request);

  /// 사용자 로그아웃
  @POST('/ums/user/sign/out')
  Future<DataResponse<SuccessResponse>> postUserSignOut();

  // UTM UMS User

  /// 사용자인 나의 정보 조회
  @GET('/ums/user/me')
  Future<DataResponse<UtmUmsMyUserResponse>> getUserMe();

  /// 사용자로서 탈퇴, 사용자인 내 정보 삭제
  @DELETE('/ums/user/me')
  Future<DataResponse<SuccessResponse>> deleteUserMe();

  /// 사용자인 나의 이메일 수정
  @PATCH('/ums/user/me/email')
  Future<DataResponse<SuccessResponse>> patchUserMeEmail(@Body() UtmUmsUpdateMyUserEmailRequest request);

  /// 사용자인 나의 휴대 전화 번호 수정
  @PATCH('/ums/user/me/phone')
  Future<DataResponse<SuccessResponse>> patchUserMePhone(@Body() UtmUmsUpdateMyUserPhoneRequest request);

  /// 사용자인 나의 패스워드 변경
  @PATCH('/ums/user/me/password')
  Future<DataResponse<SuccessResponse>> patchUserMePassword(@Body() UtmUmsUpdateMyUserPasswordRequest request);

  /// 사용자 이메일로 비밀번호 재변경
  @PATCH('/ums/user/password/by-email')
  Future<DataResponse<SuccessResponse>> patchUserPasswordByEmail(@Body() UtmUmsResetUserPasswordByEmailRequest request);

  /// 사용자 전화번호로 비밀번호 재변경
  @PATCH('/ums/user/password/by-phone')
  Future<DataResponse<SuccessResponse>> patchUserPasswordByPhone(@Body() UtmUmsResetUserPasswordByPhoneRequest request);

  // UTM UMS UIM

  /// UIM 등록
  @POST('/ums/uim')
  Future<DataResponse<UtmUmsUimResponse>> postUim(@Body() UtmUmsCreateUimRequest request);

  /// UIM 조회
  @GET('/ums/uim/{uimId}')
  Future<DataResponse<UtmUmsUimResponse>> getUim(@Path("uimId") String uimId);

  /// UIM 목록 조회
  @GET('/ums/uims')
  Future<DataResponse<UtmUmsUimsResponse>> getUims(@Queries() UtmUmsUimsRequest request);

  /// UIM 수 조회
  @GET('/ums/uims/count')
  Future<DataResponse<UtmUmsUimsCountResponse>> getUimsCount();

  /// UIM 상태를 취소로 설정
  @PATCH('/ums/uim/{uimId}/canceled')
  Future<DataResponse<SuccessResponse>> patchUimCanceled(@Path("uimId") String uimId);

  /// UIM상태를 사용 완료로 설정
  @PATCH('/ums/uim/{uimId}/finished')
  Future<DataResponse<SuccessResponse>> patchUimFinished({
    @Path("uimId") required String uimId,
    @Body() required UtmUmsFinishUimRequest request,
  });

  /// UIM 발급 기간 연장 신청
  @PATCH('/ums/uim/{uimId}/issuance-period-to')
  Future<DataResponse<UtmUmsExtendUimPeriodRequest>> patchUimIssuancePeriodTo({
    @Path("uimId") required String uimId,
    @Body() required UtmUmsExtendUimPeriodRequest request,
  });

  // UTM UMS Flight

  /// 비행 정보 조회
  @GET('/ums/flight')
  Future<DataResponse<UtmUmsFlightResponse>> getFlight(
    @Query("approvalNumber") String approvalNumber,
  );
  
  // UTM UMS Notification

  /// 알림 목록 조회
  @GET('/notifications')
  Future<DataResponse<UtmUmsNotificationsResponse>> getNotifications(
    @Queries() UtmUmsNotificationsRequest request,
  );

  /// 알림 수 조회
  @GET('/notifications/count')
  Future<DataResponse<UtmUmsNotificationsCountResponse>> getNotificationsCount(
    @Query("isRead") bool isRead,
  );

  /// 알림 읽음 상태로 설정
  @PATCH('/notifications/read')
  Future<DataResponse<SuccessResponse>> patchNotificationsRead(
    @Query("lastNotificationId") String lastNotificationId,
  );

  // UTM UMS Local

  /// 위치 조회
  @GET('/ums/local')
  Future<DataResponse<UtmUmsLocalResponse>> getLocal(@Queries() UtmUmsLocalRequest request);

  /// 위치 목록 조회
  @GET('/ums/locals')
  Future<DataResponse<UtmUmsLocalsResponse>> getLocals(@Queries() UtmUmsLocalsRequest request);

  // UTM UMS Weather

  /// 기상청 기상 정보 조회
  @GET('/ums/weather')
  Future<DataResponse<UtmUmsWeatherResponse>> getWeather(@Queries() UtmUmsWeatherRequest request);

  /// 기상청 초단기실황 조회
  @GET('/ums/weather/live')
  Future<DataResponse<UtmUmsUltraShortTermLiveConditionResponse>> getWeatherLive(
      @Queries() UtmUmsWeatherLiveRequest request);

  /// 지구자기상청 초단기 예보
  @GET('/ums/weather/ultra-short-term-forecasts')
  Future<DataResponse<UtmUmsUltraShortTermForecastsResponse>> getWeatherUltraShortTermForecasts(
      @Queries() UtmUmsWeatherUltraShortTermForecastsRequest request);

  /// 지구자기장 지수 관측 데이터
  @GET('/ums/weather/kindex')
  Future<DataResponse<UtmUmsKindexResponse>> getWeatherKindex();

  /// 지구자기장 관측 데이터(제주기준)
  @GET('/ums/weather/magnetism')
  Future<DataResponse<UtmUmsMagnetismResponse>> getWeatherMagnetism();

  /// 일출일몰 정보
  @GET('/ums/weather/solar-event')
  Future<DataResponse<UtmUmsSolarEventResponse>> getWeatherSolarEvent(@Queries() UtmUmsSolarEventRequest request);


  // UTM UMS Airspace

  /// 공영 목록 조회
  @GET('/ums/airspaces')
  Future<DataResponse<UtmUmsAirspacesResponse>> getAirspaces(@Queries() UtmUmsAirspacesRequest request);


  // UTM UMS Pilot Rule

  /// 조종사 준수사항 목록 조회
  @GET('/ums/pilot-rules')
  Future<DataResponse<UtmUmsPilotRulesResponse>> getPilotRules(@Queries() UtmUmsPilotRulesRequest request);


  // UTM UMS Announcement

  @GET('/ums/announcements')
  Future<DataResponse<UtmUmsAnnouncementsResponse>> getAnnouncements(@Queries() UtmUmsAnnouncementsRequest request);

  // 공지사항 상세 조회 api
  
  @GET('/ums/announcement/{id}')
  Future<DataResponse<UtmUmsAnnouncementResponse>> getAnnouncement({@Path("id") required String id});

  // UTM UMS Faq

  @GET('/ums/faqs')
  Future<DataResponse<UtmUmsFaqsResponse>> getFaqs(@Queries() UtmUmsFaqsRequest request);

  // UTM UMS Term

  // 약관 상세 조회 api
  @GET('/ums/term/{id}')
  Future<DataResponse<UtmUmsTermResponse>> getTerm({@Path("id") required String id});
  
  // 약관 제목 목록 조회 api
  @GET('/ums/terms/titles')
Future<DataResponse<UtmUmsTermsTitlesResponse>> getTermsTitles(@Queries() UtmUmsTermsTitlesRequest request);
}
