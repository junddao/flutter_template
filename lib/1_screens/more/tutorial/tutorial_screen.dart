import 'package:smatii/index.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

/// 튜토리얼 목록
class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  TutorialScreenState createState() => TutorialScreenState();
}

class TutorialScreenState extends State<TutorialScreen> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: <Widget>[
              SmoothPageIndicator(
                controller: controller,
                count: 4,
                effect: const ExpandingDotsEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  expansionFactor: 4,
                  dotColor: TSColors.flyGrey600,
                  activeDotColor: TSColors.flyBlue700,
                ),
              ),
              const SizedBox(height: 60),
              Expanded(
                child: PageView(
                  controller: controller,
                  children: const [
                    FirstPage(),
                    SecondPage(),
                    ThirdPage(),
                    FourthPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('구역 범례를 볼 수 있습니다.', style: TSTextStyle.size24.medium),
        const SizedBox(height: 30),
        const Text(
          '(25Kg 이하 / 초과에 따라 기본선택이\n다릅니다)',
          style: TSTextStyle.size16,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxWidth,
              child: Image.asset(TSImages.tutorialLegend),
            );
          },
        )
      ],
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('날씨 정보를 볼 수 있습니다.', style: TSTextStyle.size24.medium),
        const SizedBox(height: 30),
        const Text(
          '(25Kg 이하 / 초과에 따라 기본선택이\n다릅니다)',
          style: TSTextStyle.size16,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxWidth,
              child: Image.asset(TSImages.tutorialWeather),
            );
          },
        )
      ],
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('지역 정보를 볼 수 있습니다.', style: TSTextStyle.size24.medium),
        const SizedBox(height: 30),
        const Text(
          '(25Kg 이하 / 초과에 따라 기본선택이\n다릅니다)',
          style: TSTextStyle.size16,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxWidth,
              child: Image.asset(TSImages.tutorialWeather),
            );
          },
        )
      ],
    );
  }
}

class FourthPage extends StatelessWidget {
  const FourthPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('날릴 준비 되셨나요?', style: TSTextStyle.size24.medium),
        const SizedBox(height: 30),
        const Text(
          '플라이워치를 통해\n유용한 기능을 이용해보세요!',
          style: TSTextStyle.size16,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 90),
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: LayoutBuilder(builder: (context, constraint) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 0,
                    child: Image.asset(TSImages.basicDrone),
                  ),
                  Positioned(
                    left: constraint.maxWidth / 5,
                    bottom: 0,
                    child: Image.asset(TSImages.illustUser),
                  ),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }
}
