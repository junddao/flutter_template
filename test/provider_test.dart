import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smatii/index.dart';

// Using mockito to keep track of when a provider notify its listeners
class Listener<T> extends Mock {
  void call(T? previous, T value);
}

@GenerateMocks([AuthNotifier])
void main() {
  late final ProviderContainer ref;

  setUpAll(() async {
    print('initState');
    FlavorConfig(
      name: "TEST",
      variables: {
        "EndPoint": "https://api.ums.smatii.twosun.com/v1",
      },
    );
    // sharedPreference test모드 적용(필수)
    SharedPreferences.setMockInitialValues({
      // 'accessToken' : 'string'
      // 'refreshToken' : 'string'
    });
    // sharedPreference 생성
    var prefs = await SharedPreferences.getInstance();
    // ref 생성
    ref = ProviderContainer(overrides: [sharedPreferencesProvider.overrideWithValue(prefs)]);
  });

  group('1.계정 테스트', () {
    // test('mock auth 샘플 확인', () async {
    //   final mockAuthProvider = MockAuthNotifier();
    //   when(mockAuthProvider.isAuthenticated).thenReturn(true);

    //   final ref = ProviderContainer(
    //     overrides: [
    //       authChangeNotifierProvider.overrideWith((ref) => mockAuthProvider)
    //     ],
    //   );
      
    //   print('ref.read(authChangeNotifierProvider).isAuthenticated -> ${ref.read(authChangeNotifierProvider).isAuthenticated}');
    //   expect(ref.read(authChangeNotifierProvider).isAuthenticated, true);
    // });
    test('로그인 확인', () async {
      final notifier = ref.read(authProvider.notifier);
      // final listener = Listener<bool>();

      // Add listener to the notifier.
      // notifier.addListener(() {
      //   listener(null, notifier.isAuthenticated);
      // });

      // Trigger the `incrementCounter` method and verify that the counter has been incremented.
      await notifier.login();

      // Verify that the listener has been called once.
      // verify(listener(null, true)).called(1);

      // Remove the listener from the notifier.
      // notifier.removeListener(() {
      //   listener(null, notifier.isAuthenticated);
      // });

      expect(ref.read(authProvider).status, AuthState.unauthorized);
    });

    test('로그아웃 확인', () async {
      final notifier = ref.read(authProvider.notifier);
      // final listener = Listener<bool>();

      // Add listener to the notifier.
      // notifier.addListener(() {
      //   listener(null, notifier.isAuthenticated);
      // });

      // Trigger the `incrementCounter` method and verify that the counter has been incremented.
      await notifier.logout();

      // Verify that the listener has been called once.
      // verify(listener(null, false)).called(1);

      // Remove the listener from the notifier.
      // notifier.removeListener(() {
      //   listener(null, notifier.isAuthenticated);
      // });

      expect(ref.read(authProvider).status, AuthState.unauthorized);
    });
  });
}
