import 'package:smatii/index.dart';

/// 공지사항 목록
class NoticeScreen extends ConsumerWidget {
  const NoticeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      backgroundColor: TSColors.flyGrey200,
      appBar: AppBar(
        title: const Text('공지사항'),
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(noticeFutureProvider);
            ref.read(noticeFutureProvider(const UtmUmsAnnouncementsRequest()));
          },
          child: ListView.builder(
            itemBuilder: (context, index) {
              final page = index ~/ kDefaultPaginationCnt + 1;
              final indexInPage = index % kDefaultPaginationCnt;
      
              UtmUmsAnnouncementsRequest request = UtmUmsAnnouncementsRequest(
                itemCount: kDefaultPaginationCnt,
                pageNumber: page,
              );
      
              final noticeList = ref.watch(noticeFutureProvider(request));
      
              return noticeList.when(
                data: (items) {
                  if (items.data!.countOfTotal == 0) {
                    return const Center(child: Text('No Data'));
                  }
                  if (indexInPage >= items.data!.announcements.length) {
                    return null;
                  }
      
                  final item = items.data!.announcements[indexInPage];
      
                  return CustomListTile(
                    title: item.title,
                    subTitle: item.createdAt.toFullDateTimeString2(),
                    onTap: () {
                      context.pushRelative(Routes.noticeDetail, pathParameters: {'id': item.id});
                    },
                  );
                },
                error: (err, stackTrace) {
                  return Text('Error $err');
                },
                loading: () {
                  return TSLoadingView.twoLine();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
