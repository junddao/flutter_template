import 'package:smatii/index.dart';

// 공지사항 상세
class NoticeDetailScreen extends ConsumerWidget {
  const NoticeDetailScreen({
    super.key,
    required this.id,
  });

  /// 공지사항 아이디
  final String id;

  @override
  Widget build(BuildContext context, ref) {
    final notice = ref.watch(noticeDetailFutureProvider(id));
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
      body: notice.when(
        data: (data) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data.data!.title, style: TSTextStyle.size16.semiBold.h1_5),
                    const SizedBox(height: 12),
                    Text(data.data!.createdAt.toFullDateTimeString2(), style: TSTextStyle.size12.medium),
                  ],
                ),
              ),
              const Divider(height: 1,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(data.data!.html, style: TSTextStyle.size16.h1_5,),
                ),
              ),
            ],
          );
        },
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
