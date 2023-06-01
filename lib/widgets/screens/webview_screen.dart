import 'package:smatii/index.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({
    Key? key,
    required this.title,
    required this.urlPath,
  }) : super(key: key);

  final String title;
  final String urlPath;

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('웹뷰'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => CSNavigator.pop(),
        ),
      ),
      body: WebView(
        initialUrl: widget.urlPath,
        javascriptMode: JavascriptMode.unrestricted,
        debuggingEnabled: isTestMode ? true : false,
        gestureNavigationEnabled: true,
      ),
    );
  }
}