import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:smatii/index.dart';

/// 더보기 페이지
class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TSColors.etc3F4F76,
      appBar: AppBar(
        iconTheme: Theme.of(context).appBarTheme.iconTheme!.copyWith(color: Colors.white),
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(color: Colors.white),
          InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              context.push(Routes.notice);
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Text(
                    '공지사항',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const Divider(color: Colors.white),
          InkWell(
            onTap: () {
              context.push(Routes.termsOfUse);
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Text(
                    '이용약관',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const Divider(color: Colors.white),
          if (kDebugMode) ...[
            InkWell(
              onTap: () {
                context.push(Routes.sample);
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  children: [
                    Text(
                      '샘플 페이지',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(color: Colors.white),
          ],
        ],
      ),
    );
  }
}
