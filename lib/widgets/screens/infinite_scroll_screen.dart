import 'package:smatii/index.dart';

class InfiniteScrollScreen extends StatefulWidget {
  const InfiniteScrollScreen({
    super.key,

    /// 새로 로딩할 페이지 카운트
    this.pageCount = 10,

    /// 검색 최대 카운트
    this.maxCount = 30,

    /// 호출할 API
    required this.api,

    /// 아이템 빌더
    required this.itemBuilder,
  });

  final int pageCount;
  final int maxCount;
  final Future<List<dynamic>> Function(int page, int pageCount) api;
  final Widget Function(BuildContext context, int count, dynamic result) itemBuilder;

  @override
  InfiniteScrollScreenState createState() => InfiniteScrollScreenState();
}

class InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  ScrollController scrollController = ScrollController();

  /// 페이지
  int page = 1;

  /// 데이터
  List<dynamic> data = [];

  /// 로딩여부
  bool isLoading = false;

  /// 추가 호출 여부
  bool hasMore = false;

  @override
  void initState() {
    super.initState();
    _loadData();
    // scrollController.offset >= scrollController.position.maxScrollExtent * 0.7
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent && hasMore) {
        if (!isLoading) {
          _loadData();
        }
      }
    });
  }

  /// API호출부분
  _loadData() async {
    // show loading
    setState(() {
      isLoading = true;
    });
    await Future.delayed(const Duration(seconds: 2));

    // call API
    List<dynamic> appendData = await widget.api(page, widget.pageCount);
    page += 1;

    // data input
    setState(() {
      data.addAll(appendData);
      isLoading = false;
      hasMore = data.length < widget.maxCount;
    });
  }

  /// 새로고침
  // ignore: unused_element
  _refresh() async {
    setState(() {
      isLoading = true;
      data.clear();
    });
    await Future.delayed(const Duration(seconds: 2));
    _loadData();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          const Text(
            '예식장 위치를 등록해주세요',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 40,
          ),
          TextFormField(
            decoration: const InputDecoration(hintText: '텍스트'),
          ),
          Expanded(
            child: ListView.separated(
              controller: scrollController,
              itemBuilder: (_, index) {
                if (index < data.length) {
                  return widget.itemBuilder(context, index, data[index]);
                }
                if (isLoading) {
                  return const Center(child: RefreshProgressIndicator());
                }
                return const SizedBox.shrink();
              },
              separatorBuilder: (_, index) => const Divider(),
              itemCount: data.length + 1,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
