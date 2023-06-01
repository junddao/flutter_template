import 'package:smatii/index.dart';

final umsPilotRuleRepositoryProvider = Provider<UmsPilotRuleRepository>((ref) {
  return UmsPilotRuleRepository(ref);
});

class UmsPilotRuleRepository {
  final Ref ref;

  UmsPilotRuleRepository(this.ref);

  /// 조종사 준수사항 목록 조회
  Future<DataResponse<UtmUmsPilotRulesResponse>> searchPilotRule(UtmUmsPilotRulesRequest request) async {
    try {
      var result = await ref.watch(restApiProvider).getPilotRules(request);
      return result;
    } catch (e) {
      showErrorLog(error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }
}
