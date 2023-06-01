import 'package:flutter/cupertino.dart';

/// 네이게이터 클래스
class CSNavigator {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  get key => navigatorKey;

  static void pop<T>({T? result}) {
    navigatorKey.currentState!.pop<T>(result);
  }

  static void indexPop({int index = 1}) {
    int count = 0;
    navigatorKey.currentState!.popUntil((route) {
      return count++ == index;
    });
  }

  static void firstPop() {
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  static Future<dynamic> push<T extends ChangeNotifier>({
    required Widget child,
    RouteSettings? settings,
    bool useBottomToTopRoute = false,
  }) {
    return navigatorKey.currentState!.push(
      useBottomToTopRoute
          ? _bottomToTopRoute<T>(child: child, settings: settings)
          : _rightToLeftRoute<T>(child: child, settings: settings),
    );
  }

  static Future<dynamic> pushAndRemoveAll<T extends ChangeNotifier>({
    required Widget child,
    RouteSettings? settings,
    bool useBottomToTopRoute = false,
  }) {
    return navigatorKey.currentState!.pushAndRemoveUntil(
      useBottomToTopRoute
          ? _bottomToTopRoute<T>(child: child, settings: settings)
          : _rightToLeftRoute<T>(child: child, settings: settings),
      (Route<dynamic> route) => false,
    );
  }

  static Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return navigatorKey.currentState!.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  static Future<dynamic> pushNamedAndRemoveAll(String routeName,
      {Object? arguments}) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      (Route<dynamic> route) => false,
      arguments: arguments,
    );
  }

  static Future<dynamic> pushReplacement<T extends ChangeNotifier>({
    required Widget child,
    bool useBottomToTopRoute = false,
    Object? arguments,
  }) {
    return navigatorKey.currentState!.pushReplacement(
      useBottomToTopRoute
          ? _bottomToTopRoute<T>(child: child)
          : _rightToLeftRoute<T>(child: child),
    );
  }

  static Route _bottomToTopRoute<T extends ChangeNotifier>({
    required Widget child,
    RouteSettings? settings,
  }) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionDuration: const Duration(milliseconds: 300),
      reverseTransitionDuration: const Duration(milliseconds: 300),
      settings: settings,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
            position:
                Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero)
                    .animate(CurvedAnimation(
                        parent: animation,
                        curve: Curves.linearToEaseOut,
                        reverseCurve: Curves.easeInToLinear)),
            child: child);
      },
    );
  }

  static Route _rightToLeftRoute<T extends ChangeNotifier>({
    required Widget child,
    RouteSettings? settings,
  }) {
    return CupertinoPageRoute(
      builder: (context) => child,
      settings: settings,
    );
  }
}
