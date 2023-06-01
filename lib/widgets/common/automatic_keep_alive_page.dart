import 'package:flutter/material.dart';

class AutomaticKeepAlivePage extends StatefulWidget {
  const AutomaticKeepAlivePage({
    super.key,
    required Widget child,
  // ignore: prefer_initializing_formals
  })  : child = child;

  final Widget child;

  @override
  AutomaticKeepAlivePageState createState() => AutomaticKeepAlivePageState();
}

class AutomaticKeepAlivePageState extends State<AutomaticKeepAlivePage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return widget.child;
  }
}