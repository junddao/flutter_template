import 'package:smatii/index.dart';

/// 내 정보 페이지
class MyInfoScreen extends ConsumerWidget {
  const MyInfoScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(color: Colors.white),
        iconTheme: Theme.of(context).appBarTheme.iconTheme!.copyWith(color: Colors.white),
        backgroundColor: TSColors.etc3F4F76,
        title: const Text('내 정보'),
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: TSColors.etc3F4F76,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Text('안녕하세요. 김쿠키님', style: TSTextStyle.size24.flyGrey300),
                  const SizedBox(height: 28),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          '생년월일',
                          style: TSTextStyle.size14.flyGrey300,
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Text(
                          '2023년 1월 1일',
                          style: TSTextStyle.size14.flyGrey300,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          '이메일',
                          style: TSTextStyle.size14.flyGrey300,
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Text(
                          'zalban@twosun.com',
                          style: TSTextStyle.size14.flyGrey300,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          '전화번호',
                          style: TSTextStyle.size14.flyGrey300,
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Text(
                          '010-1111-1111',
                          style: TSTextStyle.size14.flyGrey300,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  CustomListTile(
                    title: '내 정보 수정',
                    onTap: () {
                      tsUrlLauncher(url: 'https://ums.smatii.twosun.com/my-page', urlType: UrlType.internet);
                    },
                  ),
                  CustomListTile(
                    title: 'UIM 신청',
                    onTap: () {
                      tsUrlLauncher(url: 'https://ums.smatii.twosun.com/ums/create', urlType: UrlType.internet);
                    },
                  ),
                  CustomListTile(
                    title: 'UIM 신청내역',
                    onTap: () {
                      tsUrlLauncher(url: 'https://ums.smatii.twosun.com/my-page', urlType: UrlType.internet);
                    },
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: OutlinedButton(
                      onPressed: () {
                        ref.read(authProvider.notifier).logout();
                      },
                      child: const Text(
                        '로그아웃',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
