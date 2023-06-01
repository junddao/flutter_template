import 'package:smatii/index.dart';

/// 이용약관 목록
class TermsOfUseScreen extends ConsumerWidget {
  const TermsOfUseScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      backgroundColor: TSColors.flyGrey200,
      appBar: AppBar(
        title: const Text('이용약관'),
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(termsOfUseFutureProvider);
          ref.read(termsOfUseFutureProvider(const UtmUmsTermsTitlesRequest()));
        },
        child: ListView.builder(
          // padding: const EdgeInsets.symmetric(vertical: 16),
          itemBuilder: (context, index) {
            final page = index ~/ kDefaultPaginationCnt + 1;
            final indexInPage = index % kDefaultPaginationCnt;

            UtmUmsTermsTitlesRequest request = UtmUmsTermsTitlesRequest(
              itemCount: kDefaultPaginationCnt,
              pageNumber: page,
            );

            final terms = ref.watch(termsOfUseFutureProvider(request));

            return terms.when(
              data: (items) {
                if (items.data!.countOfTotal == 0) {
                  return const Center(child: Text('No Data'));
                }
                if (indexInPage >= items.data!.titles.length) {
                  return null;
                }

                final item = items.data!.titles[indexInPage];

                return CustomListTile(
                  title: item.title,
                  onTap: () {
                    context.pushRelative(Routes.termsOfUseDetail, pathParameters: {'id': item.id});
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
    );
  }
}
