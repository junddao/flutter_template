import 'package:flutter/material.dart';

/// IOS전용 Bottom Navigator bar
class IOSBottomNavigatorBar extends StatelessWidget {
  final Widget child;
  final Color? color;

  /// IOS전용 Bottom Navigator Bar
  ///
  /// scaffold의 background색상과 Bottom Navigator Bar(ios) 색상을 다르게 적용하고 싶을 때 사용
  const IOSBottomNavigatorBar({
    Key? key,
    required this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Theme.of(context).appBarTheme.systemOverlayStyle?.statusBarColor,
      child: SafeArea(
        top: false,
        left: false,
        right: false,
        bottom: true,
        child: child,
      ),
    );
  }
}
