import 'package:smatii/index.dart';

final signInScreenNotifierProvider =
    AutoDisposeNotifierProvider<SignInScreenNotifier, SignInScreenModel>(SignInScreenNotifier.new);

class SignInScreenNotifier extends AutoDisposeNotifier<SignInScreenModel> {
  @override
  SignInScreenModel build() {
    ref.onDispose(() {
      // notifier에서 정의한 컨트롤러 dispose
    });
    return const SignInScreenModel();
  }

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }

  String? signInValidate() {
    if (state.email.isNullEmpty) {
      return '이메일을 정확히 입력해주세요.';
    }
    if (!state.email.isEmail) {
      return '잘못된 형식의 이메일입니다.';
    }
    if (state.password.isNullEmpty) {
      return '비밀번호를 정확히 입력해주세요.';
    }
    return null;
  }

  void signIn() {
    // 생명유지 해제
    // _keepAliveLink.close();
    // 로그인
    ref.read(authProvider.notifier).login();
  }
}
