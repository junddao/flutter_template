import 'package:http/http.dart' as http;
import 'package:kakaomap_webview/kakaomap_webview.dart';
import 'package:smatii/index.dart';

class KakaoMapScreen extends StatelessWidget {
  const KakaoMapScreen({
    Key? key,
    required this.name,
    required this.address,
    required this.longitude,
    required this.latitude,
  }) : super(key: key);

  final String name;
  final String address;
  final double longitude;
  final double latitude;

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
        title: Text(name),
        centerTitle: true,
      ),
      body: LayoutBuilder(builder: (context, constraint) {
        return Stack(
          children: [
            KakaoMapView(
              width: double.infinity, //Get.width,
              height: double.infinity,
              kakaoMapKey: '7f90aab25de510be6aba7477c69ab193', // 자바스크립 키
              lng: longitude,
              lat: latitude,
              showMapTypeControl: true,
              showZoomControl: true,
              draggableMarker: true,
              onTapMarker: (message) {},
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: constraint.maxWidth,
                height: 50,
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        address,
                        style: TSTextStyle.size16,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        String kakaoRestApiKey = 'bc2ce6fe85211a284d73eb13445365f8';
                        dynamic response = await http.get(
                          Uri.parse(
                              "https://dapi.kakao.com/v2/local/geo/transcoord.JSON?x=$longitude&y=$latitude&output_coord=WCONGNAMUL"),
                          headers: {
                            "Authorization": "KakaoAK $kakaoRestApiKey",
                          },
                        );

                        dynamic responseMap = json.decode(response.body);

                        String ex = responseMap["documents"][0]["x"].toString();
                        String ey = responseMap["documents"][0]["y"].toString();

                        String url = "https://m.map.kakao.com/actions/routeView?ex=$ex&ey=$ey&endLoc=$name";

                        tsUrlLauncher(url: url, urlType: UrlType.internet);
                      },
                      child: const Text('길찾기', style: TSTextStyle.size16),
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
