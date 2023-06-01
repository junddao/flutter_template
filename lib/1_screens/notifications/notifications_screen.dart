import 'package:smatii/index.dart';

/// 경고 알림 목록
class NotificationsScreen extends ConsumerWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      backgroundColor: TSColors.flyGrey200,
      appBar: AppBar(
        title: const Text('경고 알림 내역'),
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: LayoutBuilder(builder: (context, constraint) {
          return RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(notificationsFutureProvider);
              ref.read(notificationsFutureProvider(const UtmUmsNotificationsRequest()));
            },
            child: ListView.builder(
              // padding: const EdgeInsets.symmetric(vertical: 16),
              itemBuilder: (context, index) {
                final page = index ~/ kDefaultPaginationCnt + 1;
                final indexInPage = index % kDefaultPaginationCnt;

                UtmUmsNotificationsRequest request = UtmUmsNotificationsRequest(
                  itemCount: kDefaultPaginationCnt,
                  pageNumber: page,
                );

                final terms = ref.watch(notificationsFutureProvider(request));

                return terms.when(
                  data: (items) {
                    if (items.data!.countOfTotal == 0) {
                      return const Center(child: Text('No Data'));
                    }
                    if (indexInPage >= items.data!.notifications.length) {
                      return null;
                    }

                    final item = items.data!.notifications[indexInPage];

                    return Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(17),
                            border: Border.all(
                              color: TSColors.flyGrey400,
                            ),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.message,
                                style: TSTextStyle.size16.h1_5,
                              ),
                              const SizedBox(height: 5),
                              Text('3시간 전', style: TSTextStyle.size12.flyGrey600)
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
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
          );
        }),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      //   child: Column(
      //     children: [
      //       Column(
      //         children: [
      //           Container(
      //             width: double.infinity,
      //             decoration: BoxDecoration(
      //               color: Colors.white,
      //               borderRadius: BorderRadius.circular(17),
      //               border: Border.all(color: TSColors.greyDDDDDD)
      //             ),
      //             padding: const EdgeInsets.all(20),
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text('비행금지구역에 진입하였습니다.\n나가주세요.', style: TSTextStyle.size16.h1_5,),
      //                 const SizedBox(height: 5),
      //                 Text('3시간 전', style: TSTextStyle.size12.flyGrey600)
      //               ],
      //             ),
      //           ),
      //           const SizedBox(height: 16),
      //         ],
      //       ),
      //       Column(
      //         children: [
      //           Container(
      //             width: double.infinity,
      //             decoration: BoxDecoration(
      //               color: Colors.white,
      //               borderRadius: BorderRadius.circular(17),
      //               border: Border.all(color: TSColors.greyDDDDDD)
      //             ),
      //             padding: const EdgeInsets.all(20),
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text('비행금지구역에 진입하였습니다.\n나가주세요.', style: TSTextStyle.size16.h1_5,),
      //                 const SizedBox(height: 5),
      //                 Text('3시간 전', style: TSTextStyle.size12.flyGrey600)
      //               ],
      //             ),
      //           ),
      //           const SizedBox(height: 16),
      //         ],
      //       ),
      //       Column(
      //         children: [
      //           Container(
      //             width: double.infinity,
      //             decoration: BoxDecoration(
      //               color: Colors.white,
      //               borderRadius: BorderRadius.circular(17),
      //               border: Border.all(color: TSColors.greyDDDDDD)
      //             ),
      //             padding: const EdgeInsets.all(20),
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text('비행금지구역에 진입하였습니다.\n나가주세요.', style: TSTextStyle.size16.h1_5,),
      //                 const SizedBox(height: 5),
      //                 Text('3시간 전', style: TSTextStyle.size12.flyGrey600)
      //               ],
      //             ),
      //           ),
      //           const SizedBox(height: 16),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
