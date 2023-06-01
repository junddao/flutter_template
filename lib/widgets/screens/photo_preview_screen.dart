import 'package:photo_view/photo_view.dart';
import 'package:smatii/index.dart';

class PhotoPreviewScreen extends StatelessWidget {
  const PhotoPreviewScreen({
    super.key,
    required this.imagePath,
  });

  /// 이미지 경로
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            CSNavigator.pop();
          },
        ),
        title: const Text(
          '상세보기',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: PhotoView(
        imageProvider: tsGetImage(imagePath),
        backgroundDecoration: const BoxDecoration(color: Colors.white),
      ),
    );
  }
}
