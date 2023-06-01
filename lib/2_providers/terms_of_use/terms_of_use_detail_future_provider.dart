import 'package:smatii/index.dart';

/// 약관 상세 조회
final termsOfUseDetailFutureProvider = FutureProvider.autoDispose.family<DataResponse<UtmUmsTermResponse>, String>(
  (ref, id) {
    return ref.watch(umsTermRepositoryProvider).searchTerm(id);
  },
  name: 'termsOfUseDetailFutureProvider',
);
