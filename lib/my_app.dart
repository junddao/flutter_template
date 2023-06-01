import 'dart:math';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:smatii/index.dart';

// 화면 흐름 순서
// main -> Myapp -> BeginApp -> (SplashScreen) -> StartScreen
//                                             -> LoginScreen

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    // 테마모드
    final themeMode = ref.watch(themeNotifierProvider).themeMode;
    // 라우터
    final router = ref.watch(goRouterProvider);
    return MyFlavorBanner(
      child: MaterialApp.router(
        scrollBehavior: EffectlessScrollBehavior(),
        title: '우편함',
        routeInformationProvider: router.routeInformationProvider,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          //다국어 지원
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        themeMode: themeMode,
        theme: lightThemeData(),
        darkTheme: darkThemeData(),
        supportedLocales: const [
          //다국어 지원
          Locale('ko', 'KR'),
          Locale('en', 'US'),
        ],
        // MaterialApp build 순서
        // 1.home
        // 2.routes
        // 3.onGenerateRoute
        // 4.onUnknownRoute
        // 5.builder
        builder: (context, child) {
          // 폰트사이즈 1.0 고정
          const maxScaleFactor = 1.00;
          const minScaleFactor = 1.00;

          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
                textScaleFactor: min(max(MediaQuery.of(context).textScaleFactor, minScaleFactor), maxScaleFactor)),
            child: Builder(builder: (context) {
              TSSizeConfig().init(context);
              return child!;
            }),
          );
        },
      ),
    );
  }
}

class MyFlavorBanner extends StatelessWidget {
  const MyFlavorBanner({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) => isLiveMode
      ? child
      : FlavorBanner(
          location: BannerLocation.bottomEnd,
          color: TSColors.flyBlue700,
          child: child,
        );
}

/// 플러터 오류 옵저버
void flutterErrorObserver() {
  FlutterError.onError = (FlutterErrorDetails errorDetails) {
    // Firebase Crashlytics
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
  // Error widget
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        '오류가 발생했습니다!\n${details.exception}',
        style: const TextStyle(color: TSColors.etcFF3100),
        textAlign: TextAlign.center,
      ),
    );
  };
}
