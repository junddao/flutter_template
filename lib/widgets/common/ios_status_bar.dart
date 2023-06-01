import 'package:flutter/material.dart';

class IOSStatusBar extends StatelessWidget {
  final Widget child;
  final Color? color;

  /// IOS전용 Status bar
  ///
  /// scaffold의 background색상과 status bar(ios) 색상을 다르게 적용하고 싶을 때 사용
  ///
  /// 단 appbar를 사용 할 때는 효과없음
  const IOSStatusBar({
    Key? key,
    required this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Theme.of(context).appBarTheme.systemOverlayStyle?.statusBarColor,
      child: SafeArea(
        top: true,
        left: false,
        right: false,
        bottom: false,
        child: child,
      ),
    );
  }
}
