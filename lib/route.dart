import 'package:go_router/go_router.dart';
import 'package:smatii/1_screens/intro_screen.dart';
import 'package:smatii/1_screens/main_screen.dart';
import 'package:smatii/1_screens/more/more_screen.dart';
import 'package:smatii/1_screens/more/notice/notice_detail_screen.dart';
import 'package:smatii/1_screens/more/notice/notice_screen.dart';
import 'package:smatii/1_screens/more/terms_of_use/temrs_of_use_screen.dart';
import 'package:smatii/1_screens/more/tutorial/tutorial_screen.dart';
import 'package:smatii/1_screens/my_info_screen.dart';
import 'package:smatii/1_screens/sample/sample_screen.dart';
import 'package:smatii/1_screens/splash_screen.dart';

import '1_screens/authentication/sign_in_screen.dart';
import '1_screens/begin_app.dart';
import '1_screens/more/terms_of_use/terms_of_use_detail_screen.dart';
import 'index.dart';

class Routes {
  // 1 depth
  static const String tab = '/tab';
  static const String splash = '/splash';
  static const String pilotRule = '/pilotRule';
  static const String notice = '/notice';
  static const String faq = '/faq';
  static const String tutorial = '/tutorial';
  static const String termsOfUse = '/termsOfUse';
  static const String intro = '/intro';
  static const String sample = '/sample';

  // 2 depth
  static const String notifications = 'notifications';
  static const String kindex = 'kindex';
  static const String myInfo = 'myInfo';
  static const String more = 'more';
  static const String signIn = 'sign_in';

  // 3 depth
  static const String signUpAgreement = 'agreement';
  static const String signUpPasswordReset = 'passwordReset';
  static const String signUpProfile = 'profile';
  static const String signUpEmail = 'email';
  static const String signUpPhone = 'phone';
  static const String noticeDetail = 'noticeDetail/:id';
  static const String termsOfUseDetail = 'termsOfUseDetail/:id';

  // static profileNamedPage([String? name]) => '/${name ?? ':profile'}';
}

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey(debugLabel: 'shell');

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    final router = RouterNotifier(ref);

    return GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: Routes.splash,
      refreshListenable: router,
      debugLogDiagnostics: true,
      routes: router._routes,
      errorBuilder: (context, state) => RouteErrorScreen(
        errorMsg: state.error.toString(),
      ),
      // redirect to the login page if the user is not logged in
      redirect: router._redirect,
    );
  },
);

class RouterNotifier extends ChangeNotifier {
  final Ref _ref;
  ProviderSubscription? subscription;

  RouterNotifier(this._ref) {
    subscription = _ref.listen<AuthStates>(
      authProvider,
      (_, __) => notifyListeners(),
    );

    _ref.onDispose(() {
      subscription?.close();
    });
  }

  Future<String?> _redirect(BuildContext context, GoRouterState state) async {
    globalContext = context;
    final authState = _ref.read(authProvider);

    if (authState.status == AuthState.unauthorized && state.location == join(Routes.tab, Routes.myInfo)) {
      /// 권한없음 상태에서 내정보 조회 시 로그인 페이지로 이동
      return join(Routes.tab, Routes.signIn);
    }

    if (authState.status == AuthState.unauthorized && state.location == join(Routes.tab, Routes.notifications)) {
      /// 권한없음 상태에서 알림 조회 시 로그인 페이지로 이동
      return join(Routes.tab, Routes.signIn);
    }

    if (authState.status == AuthState.authorized && state.location == join(Routes.tab, Routes.signIn)) {
      /// 로그인페이지에서 로그인이 되었으면 홈으로 날린다.
      return Routes.tab;
    }

    return null;
  }

  List<RouteBase> get _routes => <RouteBase>[
        ShellRoute(
          builder: (context, state, child) {
            print(state.location);
            return BeginApp(child: child);
          },
          routes: [
            ShellRoute(
              navigatorKey: _shellNavigatorKey,
              pageBuilder: (context, state, child) {
                return NoTransitionPage(
                  key: state.pageKey,
                  child: TabScreen(child: child),
                );
              },
              routes: <RouteBase>[
                GoRoute(
                  parentNavigatorKey: _rootNavigatorKey,
                  path: Routes.myInfo,
                  pageBuilder: (context, state) {
                    return const NoTransitionPage(child: MyInfoScreen());
                  },
                ),
                GoRoute(
                  parentNavigatorKey: _rootNavigatorKey,
                  path: Routes.more,
                  pageBuilder: (context, state) {
                    return const NoTransitionPage(child: MoreScreen());
                  },
                ),
              ],
            ),
            GoRoute(
              parentNavigatorKey: _rootNavigatorKey,
              path: Routes.signIn,
              pageBuilder: (context, state) {
                return const NoTransitionPage(child: SignInScreen());
              },
              routes: [
                // sign up
              ],
            ),
          ],
        ),
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: Routes.splash,
          builder: (BuildContext context, GoRouterState state) {
            return const SplashScreen();
          },
        ),
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: Routes.notice,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: NoticeScreen());
          },
          routes: [
            GoRoute(
              parentNavigatorKey: _rootNavigatorKey,
              path: Routes.noticeDetail,
              pageBuilder: (context, state) {
                return NoTransitionPage(child: NoticeDetailScreen(id: state.pathParameters['id']!));
              },
            ),
          ],
        ),
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: Routes.tutorial,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: TutorialScreen());
          },
        ),
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: Routes.termsOfUse,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: TermsOfUseScreen());
          },
          routes: [
            GoRoute(
              parentNavigatorKey: _rootNavigatorKey,
              path: Routes.termsOfUseDetail,
              pageBuilder: (context, state) {
                return NoTransitionPage(child: TermsOfUseDetailScreen(id: state.pathParameters['id']!));
              },
            ),
          ],
        ),
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: Routes.intro,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: IntroScreen());
          },
        ),
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: Routes.sample,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: SampleScreen());
          },
        ),
      ];
}
