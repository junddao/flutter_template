import 'package:smatii/index.dart';

/// 약관 목록 조회
final termsOfUseFutureProvider = FutureProvider.autoDispose.family<DataResponse<UtmUmsTermsTitlesResponse>, UtmUmsTermsTitlesRequest>(
  (ref, request) {
    return ref.watch(umsTermRepositoryProvider).searchTermsTitles(request);
  },
  name: 'termsOfUseFutureProvider',
);
