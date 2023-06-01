import 'package:go_router/go_router.dart';
import 'package:smatii/index.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        appBarTheme: AppBarTheme(
          systemOverlayStyle: Theme.of(context).appBarTheme.systemOverlayStyle!.copyWith(statusBarColor: Colors.white),
        ),
      ),
      child: IOSStatusBar(
        child: IOSBottomNavigatorBar(
          color: Colors.black,
          child: WillPopScope(
            onWillPop: onBackPressed,
            child: Scaffold(
              body: child,
              extendBody: true,
              bottomNavigationBar: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                child: SizedBox(
                  height: bottomNavigationBarSize,
                  child: BottomNavigationBar(
                    backgroundColor: Colors.black,
                    selectedItemColor: Colors.white,
                    unselectedItemColor: Colors.white,
                    type: BottomNavigationBarType.fixed,
                    currentIndex: 1,
                    iconSize: 24,
                    onTap: (index) {
                      if (index == 0) {
                        context.go(Routes.myInfo);
                      } else {
                        context.go(Routes.more);
                      }
                    },
                    items: [
                      BottomNavigationBarItem(
                        icon: Padding(
                          padding: const EdgeInsets.only(bottom: 3),
                          child: SvgPicture.asset(TSImages.profileNormal),
                        ),
                        activeIcon: Padding(
                          padding: const EdgeInsets.only(bottom: 3),
                          child: SvgPicture.asset(TSImages.profilePressed),
                        ),
                        label: '내 정보',
                      ),
                      BottomNavigationBarItem(
                        icon: Padding(
                          padding: const EdgeInsets.only(bottom: 3),
                          child: SvgPicture.asset(TSImages.gnbNormal),
                        ),
                        activeIcon: Padding(
                          padding: const EdgeInsets.only(bottom: 3),
                          child: SvgPicture.asset(TSImages.gnbPressed),
                        ),
                        label: '전체',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
