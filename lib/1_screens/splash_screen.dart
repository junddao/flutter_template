import 'package:go_router/go_router.dart';
import 'package:smatii/index.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      try {
        // 위치 권한 퍼미션 확인
        await ref.read(splashNotifierProvider.notifier).determinePosition();
        if (context.mounted) {
          bool isFirstStart = ref.read(splashNotifierProvider.notifier).getIsFirstStart();
          if (isFirstStart) {
            context.go(Routes.intro);
          } else {
            context.go(Routes.tab);
          }
        }
      } catch (e) {
        // TODO 퍼미션 거절 했을 때 관리자 설정으로 유도하는 로직 필요
        tsShowSnackBar(content: e.toString());
      }
    });
    return WillPopScope(
      onWillPop: onBackPressed,
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/gif/intro.gif'), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
