import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension Context on BuildContext {
  // 상대경로 push
  void pushRelative(
    String location, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    assert(
      !location.startsWith('/'),
      "Relative locations must not start with a '/'.",
    );

    final state = GoRouterState.of(this);
    final currentUrl = Uri.parse(state.location);
    String newPath = '${currentUrl.path}/$location';
    for (final entry in pathParameters.entries) {
      newPath = newPath.replaceAll(':${entry.key}', entry.value);
    }

    final queryParams = {
      ...currentUrl.queryParameters,
      ...queryParameters,
    };

    final newUrl = currentUrl.replace(
      path: newPath,
      queryParameters: queryParams.isEmpty ? null : queryParams
    );

    this.push(newUrl.toString(), extra: extra);
  }
}
