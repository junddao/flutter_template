import 'package:smatii/index.dart';

/// 이용약관 상세
class TermsOfUseDetailScreen extends ConsumerWidget {
  const TermsOfUseDetailScreen({
    super.key,
    required this.id,
  });

  /// 이용약관 아이디
  final String id;

  @override
  Widget build(BuildContext context, ref) {
    final term = ref.watch(termsOfUseDetailFutureProvider(id));
    return Scaffold(
      backgroundColor: TSColors.flyGrey200,
      appBar: AppBar(
        title: const Text('이용약관'), // term.whenOrNull(data: (data) => data.data!.title) ?? '',
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: term.when(
        data: (data) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  term.whenOrNull(data: (data) => data.data!.title) ?? '',
                  style: TSTextStyle.size16.semiBold,
                ),
              ),
              const Divider(
                height: 1,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(data.data!.content),
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
