import 'package:smatii/index.dart';
import 'package:upgrader/upgrader.dart';

/// 1.최초 로그인 확인
///
/// 2.네트워크 확인
///
/// 3.버전 확인
///
/// 4.로그인 확인
/// 
/// + 앱 라이프 사이클 확인
class BeginApp extends ConsumerWidget {
  const BeginApp({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 앱 라이프사이클
    ref.listen(appLifecycleStateNotifierProvider, (previous, next) { 
      switch (next) {
        case AppLifecycleState.detached:
          print('detached');
          break;
        case AppLifecycleState.inactive:
          print('inactive');
          break;
        case AppLifecycleState.paused:
          print('paused');
          break;
        case AppLifecycleState.resumed:
          print('resumed');
          break;
        default:
      }
    });
    return Consumer(
      builder: (context, ref, _) {
        NetworkStates state = ref.watch(networkNotifierProvider);
        if (state.status == NetworkState.failure) {
          return const NetworkErrorScreen();
        } else if (state.status == NetworkState.success) {
          return UpgradeAlert(
            upgrader: Upgrader(
              countryCode: 'kr',
              minAppVersion: '1.0.0', // 추후에 api를 통한 버전 받아야함
              willDisplayUpgrade: ({appStoreVersion, required display, installedVersion, minAppVersion}) {
                print('appStoreVersion:$appStoreVersion');
                print('minAppVersion:$minAppVersion');
                print('installedVersion:$installedVersion');
                print('show display:$display');
              },
            ),
            child: child,
          );
        } else {
          return const LoadingScreen();
        }
      },
    );
  }
}
