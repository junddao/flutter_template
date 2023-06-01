import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smatii/index.dart';

void main() {
  late final ProviderContainer ref;

  setUpAll(() async {
    print('initState');
    FlavorConfig(
      name: "TEST",
      variables: {
        "EndPoint": "https://api.ums.smatii.twosun.com/v1",
      },
    );
    // sharedPreference test모드 적용(필수)
    SharedPreferences.setMockInitialValues({
      'accessToken':
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzaWduYXR1cmUiOnsiaWQiOiI2NDM0YjEyNWI0YmFhYThlYTM3NWIwM2IiLCJlbWFpbCI6InphbGJhbkB0d29zdW4uY29tIiwibmFtZSI6ImVkZHkifSwidHlwZSI6IkFDQ0VTUyIsImdlbmVyYXRlZEF0IjoxNjg0OTk3NTIzOTA1LCJpYXQiOjE2ODQ5OTc1MjMsImV4cCI6MjAwMDM1NzUyM30.x2loTNZ_jusD8Q1oSgN6k7eOsHL2jy3Z4KSQyQo8EXE',
      'refreshToken':
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzaWduYXR1cmUiOnsiaWQiOiI2NDM0YjEyNWI0YmFhYThlYTM3NWIwM2IiLCJlbWFpbCI6InphbGJhbkB0d29zdW4uY29tIiwibmFtZSI6ImVkZHkifSwidHlwZSI6IlJFRlJFU0giLCJnZW5lcmF0ZWRBdCI6MTY4NDk5NzUyMzkwNSwiaWF0IjoxNjg0OTk3NTIzLCJleHAiOjIwMDAzNTc1MjN9.pz4NYw6ux7iiWqDd4F_z_-RqKBjmEbh5guP5n3wMkSM'
    });
    // sharedPreference 생성
    var prefs = await SharedPreferences.getInstance();
    // ref 생성
    ref = ProviderContainer(overrides: [sharedPreferencesProvider.overrideWithValue(prefs)]);
  });

  group('1.UTM UMS Verification', () {
    test('post/verfication/email', () async {
      var request = UtmUmsSendVerificationEmailRequest(email: 'cookie@twosun.com');
      var result = await ref.read(restApiProvider).postVerificationEmail(request);
      expect(result.isSuccess, true);
    });

    test('patch/verfication/email/verified', () async {
      var request = UtmUmsVerifyVerificationEmailRequest(email: 'cookie@twosun.com', verificationCode: '208796');
      var result = await ref.read(restApiProvider).patchVerificationEmailVerified(request);
      print(result.data?.verifiedToken);
      expect(result.isSuccess, true);
    });

    test('post/verfication/Phone', () async {
      var request = UtmUmsSendVerificationPhoneRequest(phone: '010-1234-5678');
      var result = await ref.read(restApiProvider).postVerificationPhone(request);
      expect(result.isSuccess, true);
    });

    test('patch/verfication/phone/verified', () async {
      var request = UtmUmsVerifyVerificationPhoneRequest(phone: '010-1234-5678', verificationCode: '124249');
      var result = await ref.read(restApiProvider).patchVerificationPhoneVerified(request);
      print(result.data?.verifiedToken);
      expect(result.isSuccess, true);
    });
  });

  group('2.UTM UMS User Sign', () {
    test('post/user/sign/in', () async {
      var request = UtmUmsUserSignInRequest(email: 'zalban@twosun.com', password: 'a123456!');
      var result = await ref.read(restApiProvider).postUserSignIn(request);
      if (result.isSuccess) {
        print('accessToken : ${result.data!.accessToken}');
        print('refreshToken : ${result.data!.refreshToken}');
        ref.read(umsUserRepositoryProvider.notifier).setAccessToken(result.data!.accessToken);
        ref.read(umsUserRepositoryProvider.notifier).setRefreshToken(result.data!.refreshToken);
      }
      expect(result.isSuccess, true);
    });

    test('post/user/sign/up', () async {
      var request = UtmUmsUserSignUpRequest(
        email: 'cookie@twosun.com',
        emailVerifiedToken:
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJldHJpZGVyQHR3b3N1bi5jb20iLCJ0aW1lc3RhbXAiOjE2ODM2MTAzNzU1MDUsImlhdCI6MTY4MzYxMDM3NSwiZXhwIjoxNjgzNjEzOTc1fQ.-3CeSJVhO2D5Bg20iTS2Z2ezOm3ZwuKeb8DlkT1c7gM',
        password: 'a123456!',
        name: 'Cookie',
        birthdate: '1992-12-12',
        phone: '010-1234-5678',
        phoneVerifiedToken:
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwaG9uZSI6IjAxMC01NTI1LTQyNTYiLCJ0aW1lc3RhbXAiOjE2ODM2MTAzOTYwMDgsImlhdCI6MTY4MzYxMDM5NiwiZXhwIjoxNjgzNjEzOTk2fQ.yBHrSp1munmkuYgtu4OcXqNzbSYYVcTG10f9U8o-S4M',
      );
      var result = await ref.read(restApiProvider).postUserSignUp(request);
      print(result);
      expect(result.isSuccess, true);
    });

    //! 토큰필요
    test('patch/user/sign/refresh', () async {
      try {
        var refreshToken = ref.read(umsUserRepositoryProvider.notifier).getRefreshToken() ?? '';
        var request = UtmUmsRefreshUserSignRequest(refreshToken: refreshToken);
        var result = await ref.read(restApiProvider).patchUserSignRefresh(request);
        if (result.isSuccess) {
          ref.read(umsUserRepositoryProvider.notifier).setAccessToken(result.data!.accessToken);
          ref.read(umsUserRepositoryProvider.notifier).setRefreshToken(result.data!.refreshToken);
        }
        expect(result.isSuccess, true);
      } on DioError catch (e) {
        print(e);
      }
    });

    //! 토큰필요
    test('post/user/sign/out', () async {
      try {
        var result = await ref.read(restApiProvider).postUserSignOut();
        expect(result.isSuccess, true);
      } on DioError catch (e) {
        print(e.message);
      }
    });
  });

  group('3.UTM UMS User', () {
    //! 토큰필요
    test('get/user/me(get)', () async {
      var result = await ref.read(restApiProvider).getUserMe();
      expect(result.isSuccess, true);
    });

    //! 토큰필요
    test('delete/user/me(delete)', () async {
      var result = await ref.read(restApiProvider).deleteUserMe();
      expect(result.isSuccess, true);
    });

    //! 토큰필요
    test('patch/user/me/email', () async {
      var request =
          UtmUmsUpdateMyUserEmailRequest(newEmail: 'cookie@twosun.com', verifiedToken: 'sample-email-verified-token');
      var result = await ref.read(restApiProvider).patchUserMeEmail(request);
      expect(result.isSuccess, true);
    });

    //! 토큰필요
    test('patch/user/me/phone', () async {
      var request =
          UtmUmsUpdateMyUserPhoneRequest(newPhone: '010-1234-5678', verifiedToken: 'sample-sms-verified-token');
      var result = await ref.read(restApiProvider).patchUserMePhone(request);
      expect(result.isSuccess, true);
    });

    //! 토큰필요
    test('patch/user/me/password', () async {
      var request = UtmUmsUpdateMyUserPasswordRequest(currentPassword: 'a123456!@', newPassword: 'a123456!');
      var result = await ref.read(restApiProvider).patchUserMePassword(request);
      expect(result.isSuccess, true);
    });

    test('patch/user/me/password/by-email', () async {
      var request = UtmUmsResetUserPasswordByEmailRequest(
          verifiedToken: 'sample-sms-verified-token', email: 'cookie@twosun.com', password: 'a123456!');
      var result = await ref.read(restApiProvider).patchUserPasswordByEmail(request);
      expect(result.isSuccess, true);
    });

    test('patch/user/me/password/by-phone', () async {
      var request = UtmUmsResetUserPasswordByPhoneRequest(
          verifiedToken: 'sample-sms-verified-token', phone: '000-0000-0000', password: 'a123456!');
      var result = await ref.read(restApiProvider).patchUserPasswordByPhone(request);
      expect(result.isSuccess, true);
    });
  });

  group('4.UTM UMS UIM', () {
    //! 토큰필요
    test('post/uim', () async {
      var request = UtmUmsCreateUimRequest(
        applicant: UtmUimApplicantPayload(
          name: 'Cookie',
          birthdate: '2023-02-02',
          phone: '01055254256',
          businessName: '투썬월드',
          businessNumber: '413412-341234',
        ),
        flightApprovalNumber: '1252525-1238123-2342-123',
        callSign: 'Cookie123',
        issuancePeriodFrom: '2021-01-01',
        issuancePeriodTo: '2021-12-31',
        shippingAddress: '서울시 강남구 테헤란로 123',
      );
      var result = await ref.read(restApiProvider).postUim(request);
      expect(result.isSuccess, true);
    });

    //! 토큰필요
    test('get/uim', () async {
      var uimId = '6450d2cf822779df87ba79f4';
      var result = await ref.read(restApiProvider).getUim(uimId);
      expect(result.isSuccess, true);
    });

    //! 토큰필요
    test('get/uims', () async {
      var request = UtmUmsUimsRequest(
          itemCount: 10, pageNumber: 1, sortBy: SortBy.ID.name, sortDirection: SortDirection.DESC.name);
      var result = await ref.read(restApiProvider).getUims(request);
      expect(result.isSuccess, true);
    });

    //! 토큰필요
    test('get/uims/count', () async {
      var result = await ref.read(restApiProvider).getUimsCount();
      expect(result.isSuccess, true);
    });

    //! 토큰필요
    test('patch/uim/canceled', () async {
      var uimId = '6450d2c3822779df87ba79f2';
      var result = await ref.read(restApiProvider).patchUimCanceled(uimId);
      expect(result.isSuccess, true);
    });

    //! 토큰필요
    test('patch/uim/finished', () async {
      var uimId = '6450d2c3822779df87ba79f2';
      var request = UtmUmsFinishUimRequest(pickUpAddress: '경기도 성남시 분당구 판교역로 221');
      var result = await ref.read(restApiProvider).patchUimFinished(uimId: uimId, request: request);
      expect(result.isSuccess, true);
    });

    //! 토큰필요
    test('patch/uim/issuance-period-to', () async {
      var uimId = '6450d2c3822779df87ba79f2';
      var request = UtmUmsExtendUimPeriodRequest(issuancePeriodTo: '2023-11-11');
      var result = await ref.read(restApiProvider).patchUimIssuancePeriodTo(uimId: uimId, request: request);
      expect(result.isSuccess, true);
    });
  });

  group('5.UTM UMS Flight', () {
    //! 토큰필요
    test('get/flight', () async {
      var approvalNumber = '3871-112-2876-009';
      var result = await ref.read(restApiProvider).getFlight(approvalNumber);
      expect(result.isSuccess, true);
    });
  });

  group('5-2.UTM UMS Notification', () {
    //! 토큰필요
    test('get/notifications', () async {
      var request = const UtmUmsNotificationsRequest();
      var result = await ref.read(restApiProvider).getNotifications(request);
      expect(result.isSuccess, true);
    });
    //! 토큰필요
    test('get/notifications/count', () async {
      bool isRead = true;
      var result = await ref.read(restApiProvider).getNotificationsCount(isRead);
      expect(result.isSuccess, true);
    });
    //! 토큰필요
    test('get/notifications/read', () async {
      String lastNotificationId = '000000000000000000000000';
      var result = await ref.read(restApiProvider).patchNotificationsRead(lastNotificationId);
      expect(result.isSuccess, true);
    });
  });

  group('6.UTM UMS Local', () {
    //! 토큰필요
    test('get/local', () async {
      var request = UtmUmsLocalRequest(longitude: 127.123456, latitude: 37.123456);
      var result = await ref.read(restApiProvider).getLocal(request);
      expect(result.isSuccess, true);
    });

    //! 토큰필요
    test('get/locals', () async {
      var request = UtmUmsLocalsRequest(
        itemCount: 10,
        pageNumber: 1,
        address: '분당',
      );
      var result = await ref.read(restApiProvider).getLocals(request);
      expect(result.isSuccess, true);
    });
  });

  group('7.UTM UMS Weather', () {
    test('get/weather', () async {
      var request = UtmUmsWeatherRequest(longitude: 127.123456, latitude: 37.123456);
      var result = await ref.read(restApiProvider).getWeather(request);
      expect(result.isSuccess, true);
    });
    test('get/weather/live', () async {
      var request = UtmUmsWeatherLiveRequest(longitude: 127.123456, latitude: 37.123456);
      var result = await ref.read(restApiProvider).getWeatherLive(request);
      expect(result.isSuccess, true);
    });
    test('get/weather/ultra-short-term-forecasts', () async {
      var request = UtmUmsWeatherUltraShortTermForecastsRequest(longitude: 127.123456, latitude: 37.123456);
      var result = await ref.read(restApiProvider).getWeatherUltraShortTermForecasts(request);
      expect(result.isSuccess, true);
    });
    test('get/weather/kindex', () async {
      var result = await ref.read(restApiProvider).getWeatherKindex();
      expect(result.isSuccess, true);
    });
    test('get/weather/magnetism', () async {
      var result = await ref.read(restApiProvider).getWeatherMagnetism();
      expect(result.isSuccess, true);
    });
    test('get/weather/solar-event', () async {
      var request = const UtmUmsSolarEventRequest(longitude: 127.123456, latitude: 37.123456);
      var result = await ref.read(restApiProvider).getWeatherSolarEvent(request);
      expect(result.isSuccess, true);
    });
  });

  group('8.UTM UMS Airspace', () {
    test('get/airspace', () async {
      var request = UtmUmsAirspacesRequest(
        itemCount: 10,
        pageNumber: 1,
        types: [UtmAirspaceType.DANGER_ZONE, UtmAirspaceType.FLIGHT_RESTRICTED_AREA],
        // pointLongitude: 127.123456,
        // pointLatitude: 37.123456,
        // boxMinLongitude: 127.123456,
        // boxMinLatitude: 37.123456,
        // boxMaxLongitude: 127.123456,
        // boxMaxLatitude: 37.123456
      );
      var result = await ref.read(restApiProvider).getAirspaces(request);
      // final dynamic flattenedList = result.data!.airspaces[0] .polygons;

      // print(flattenedList); // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

      // print(result.data!.airspaces.length);

      expect(result.isSuccess, true);
    });
  });

  group('9.UTM UMS Pilot Rule', () {
    test('get/pilot-rules', () async {
      var request = const UtmUmsPilotRulesRequest(
        itemCount: 10,
        pageNumber: 1,
      );
      var result = await ref.read(restApiProvider).getPilotRules(request);
      expect(result.isSuccess, true);
    });
  });

  group('10.UTM UMS Announcement', () {
    test('get/announcement', () async {
      var id = '645e01274e9d63075b604a18';
      var result = await ref.read(restApiProvider).getAnnouncement(id: id);
      expect(result.isSuccess, true);
    });
    test('get/announcements', () async {
      var request = const UtmUmsAnnouncementsRequest(itemCount: 10, pageNumber: 1);
      var result = await ref.read(restApiProvider).getAnnouncements(request);
      expect(result.isSuccess, true);
    });
  });

  group('11.UTM UMS Term', () {
    test('get/term', () async {
      var id = '6461f9304e9d63075b604a27';
      var result = await ref.read(restApiProvider).getTerm(id: id);
      expect(result.isSuccess, true);
    });
    test('get/terms/titles', () async {
      var request = const UtmUmsTermsTitlesRequest(itemCount: 10, pageNumber: 1, sortBy: 'DATETIME', sortDirection: 'DESC');
      var result = await ref.read(restApiProvider).getTermsTitles(request);
      expect(result.isSuccess, true);
    });
  });

  tearDownAll(() {
    print('dispose');
    ref.read(sharedPreferencesProvider).clear();
  });
}
