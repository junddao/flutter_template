import 'package:equatable/equatable.dart';

import '../index.dart';

final authProvider = NotifierProvider<AuthNotifier, AuthStates>(
  () {
    return AuthNotifier();
  },
  name: 'authProvider',
);

class AuthNotifier extends Notifier<AuthStates> {
  @override
  AuthStates build() {
    ref.listenSelf((previous, next) {
      if (previous != null && next.status == AuthState.authorized) {
        tsShowSnackBar(content: '로그인 되었습니다.');
      }
      if (previous != null && next.status == AuthState.unauthorized) {
        tsShowSnackBar(content: '로그아웃 되었습니다.');
      }
    });
    String? token = ref.read(umsUserRepositoryProvider).getAccessToken();
    return AuthStates(
      status: token == null ? AuthState.unauthorized : AuthState.authorized
    );
  }

  Future<void> login() async {
    try {
      // 로그인 로직을 구현합니다.
      // 로그인 성공 시, _isAuthenticated를 true로 설정하고, _username을 저장합니다.
      UtmUmsUserSignInRequest request = UtmUmsUserSignInRequest(
        email: 'zalban@twosun.com',
        password: 'a123456!',
      );
      var result = await ref.read(umsUserSignRepositoryProvider).signIn(request);
      ref.read(umsUserRepositoryProvider.notifier).setAccessToken(result.data!.accessToken);
      ref.read(umsUserRepositoryProvider.notifier).setRefreshToken(result.data!.refreshToken);

      //! data에 넣을께 없으면 지우면 됩니다.
      state = AuthStates(previous: state.status, status: AuthState.authorized, data: null);
    } catch (e) {
      state = AuthStates(previous: state.status, status: AuthState.error, message: e.toString());
    }
  }

  Future<void> logout() async {
    try {
      // 로그아웃 로직을 구현합니다.
      // 로그아웃 성공 시, _isAuthenticated를 false로 설정하고, _username을 초기화합니다.
      await ref.read(umsUserSignRepositoryProvider).signOut();
      state = const AuthStates(status: AuthState.unauthorized, data: null);
    } catch (e) {
      state = AuthStates(status: AuthState.error, message: e.toString());
    }
  }
}

class AuthStates<T> extends Equatable {
  final AuthState? previous;
  final AuthState status;
  final T? data;
  final String? message;

  const AuthStates({
    this.previous,
    required this.status,
    this.data,
    this.message,
  });

  @override
  List<Object?> get props => [previous, status, data, message];

  AuthStates copyWith({
    AuthState? previous,
    AuthState? status,
    T? data,
    String? message,
  }) {
    return AuthStates(
      previous: previous ?? this.previous,
      status: status ?? this.status,
      data: data ?? this.data,
      message: message ?? this.message,
    );
  }
}
