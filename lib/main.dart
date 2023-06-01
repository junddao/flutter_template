import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:intl/intl.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smatii/index.dart';
import 'package:smatii/my_app.dart';

void main() async {
  const isLiveMode = bool.fromEnvironment("flavor", defaultValue: false);

  if (isLiveMode) {
    FlavorConfig(
      name: "LIVE",
      variables: {
        "EndPoint": "https://api.ums.smatii.twosun.com/v1",
      },
    );
  } else {
    FlavorConfig(
      name: "TEST",
      variables: {
        "EndPoint": "https://api.ums.smatii.twosun.com/v1",
      },
    );
  }

  // 기본 앱세팅
  await platformSetup();

  // 내부 스토리지 생성
  var prefs = await SharedPreferences.getInstance();
  // 패키지 정보 가져오기
  var packageInfo = await PackageInfo.fromPlatform();

  // android : status bar 색상 및 아이콘 적용
  //
  // ios : 아이콘 색상 적용
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // android 상태바 색상
      statusBarIconBrightness: Brightness.dark, //android 아이콘 밝기
      statusBarBrightness: Brightness.light, //ios status bar 밝기 (대비되는 아이콘 색상)
    ),
  );

  // 앱 실행
  runApp(
    ProviderScope(
      observers: [RiverpodObserver()],
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
        packageInfoProvider.overrideWithValue(packageInfo),
      ],
      child: const MyApp(),
    ),
  );
}

/// 플러터 환경설정 세팅
Future<void> platformSetup() async {
  // Flutter 엔진과 위젯의 바인딩 작업
  WidgetsFlutterBinding.ensureInitialized();

  // ios에서 splash 작동 시 알림 표시줄 표시
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [
      SystemUiOverlay.bottom,
      SystemUiOverlay.top,
    ],
  );

  // 가로모드 제어
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // 다국어 기본 한국어로 적용
  Intl.defaultLocale = 'ko_KR';

  // 충돌 보고 및 예외처리
  if (isLiveMode) {
    flutterErrorObserver();
  }

  // Equatable toString() 은 주어진 모든 props를 포함하는 메서드를 구현할 수 있습니다.
  EquatableConfig.stringify = true;

  // Firebase 초기화
  // await FirebaseService().initialize();

  // naver map sdk 설정
  await NaverMapSdk.instance.initialize(clientId: '7sb5sj1gwl');

  // svg 캐시 저장
  svgPrecacheImage();
}

/// svg 아이콘 이미지 캐싱
void svgPrecacheImage() {
  const svgImages = [
    TSImages.earthNormal,
    TSImages.earthPressed,
    TSImages.floatLocate,
    TSImages.floatMap,
    TSImages.flyNormal,
    TSImages.flyPressed,
    TSImages.gnbNormal,
    TSImages.gnbPressed,
    TSImages.noneflyNormal,
    TSImages.noticeNormal,
    TSImages.noticePressed,
    TSImages.profileNormal,
    TSImages.profilePressed,
    TSImages.topnaviLeftback,
    TSImages.weather1,
    TSImages.weather2,
    TSImages.weatherDrops,
    TSImages.weatherSunDown,
    TSImages.weatherSunHorizon,
    TSImages.weatherWind,
  ];

  for (String element in svgImages) {
    var loader = SvgAssetLoader(element);
    svg.cache.putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
  }
}
