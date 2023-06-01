import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path/path.dart' as path_lib;
import 'package:permission_handler/permission_handler.dart';
import 'package:smatii/index.dart';
import 'package:url_launcher/url_launcher.dart';

//------------------------------------------------------------------------------------------------------------------------------------------
// 변수모음

/// global context 가져오기
late BuildContext globalContext;

/// global overlay context 가져오기
BuildContext? get csGetOverlayContext {
  BuildContext? overlay;
  CSNavigator.navigatorKey.currentState?.overlay?.context.visitChildElements((element) {
    overlay = element;
  });
  return overlay;
}

/// global ref 가져오기
ProviderContainer get globalProviderContainer => ProviderScope.containerOf(globalContext);

/// 라이브모드 확인
bool get isLiveMode => FlavorConfig.instance.name == "LIVE" ? true : false;

/// 테스트모드 확인
bool get isTestMode => FlavorConfig.instance.name == "TEST" ? true : false;

/// api주소
String get endPoint => FlavorConfig.instance.variables['EndPoint'];

/// 카메라 퍼미션 확인
Future<bool> get cameraPermissionIsGranted async => await Permission.camera.isGranted;

/// 상태바 사이즈
double get statusBarSize => MediaQuery.of(globalContext).viewPadding.top;

/// 앱바 사이즈
double get appBarSize => kToolbarHeight;

/// 바텀바 사이즈
const double bottomNavigationBarSize = 82;

/// 다이얼로그 오픈 확인
bool get isDialogOpen => ModalRoute.of(globalContext)?.isCurrent == false;

//------------------------------------------------------------------------------------------------------------------------------------------
// 함수모음

DateTime? _firstTouchTime; // 뒤로가기 버튼 첫번째 누른 시간
DateTime? _secondTouchTime; // 뒤로가기 버튼 두번째 누른 시간

/// 뒤로가기 종료 함수
Future<bool> onBackPressed() async {
  if (_firstTouchTime == null) {
    tsShowToast(
      message: '뒤로 버튼을 한번 더 누르시면 종료됩니다.',
    );
    _firstTouchTime = DateTime.now();
  } else {
    _secondTouchTime = DateTime.now();
    if (_secondTouchTime!.difference(_firstTouchTime!).inSeconds <= 2) {
      SystemNavigator.pop();
    } else {
      tsShowToast(
        message: '뒤로 버튼을 한번 더 누르시면 종료됩니다.',
      );
      _firstTouchTime = DateTime.now();
    }
  }
  return false;
}

/// 에뮬레이터 여부 확인
Future<bool> get isEmulator async {
  if (Platform.isAndroid) {
    AndroidDeviceInfo androidDeviceInfo = await DeviceInfoPlugin().androidInfo;
    return !androidDeviceInfo.isPhysicalDevice;
  } else if (Platform.isIOS) {
    IosDeviceInfo iosInfo = await DeviceInfoPlugin().iosInfo;
    return !iosInfo.isPhysicalDevice;
  } else {
    return false;
  }
}

/// 메시지 - 토스트
///
///  * [message], 메시지 내용
///  * [backgroundColor], 백그라운드 색상
///  * [textColor], 텍스트 색상
///  * [fontSize], 폰트 사이즈
///
Future<bool?> tsShowToast({
  required String message,
  Color backgroundColor = const Color(0x88000000),
  Color? textColor,
  double fontSize = 16,
}) {
  return Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: backgroundColor,
    textColor: textColor,
    fontSize: fontSize,
  );
}

/// 메시지 - 다이얼로그
///
///  * [title], 메시지 제목
///  * [content], 메시지 내용
///  * [actions], 버튼
///
Future<bool?> tsShowDialog({
  BuildContext? context,
  Widget? title,
  Widget? content,
  List<Widget>? actions,
  bool barrierDismissible = true,
}) {
  return showDialog<bool>(
    context: context ?? globalContext,
    barrierDismissible: barrierDismissible,
    builder: (context) {
      return WillPopScope(
        onWillPop: () async {
          return barrierDismissible;
        },
        child: AlertDialog(
          title: title,
          content: SizedBox(
            width: TSSizeConfig.screenWidth,
            child: content,
          ),
          actions: actions,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          titlePadding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
          contentPadding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 20.0),
          actionsPadding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 24.0),
          insetPadding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        ),
      );
    },
  );
}

bool isSnackbarActive = true;

/// 메시지 - 스낵바
///
///  * [content], 메시지 내용
///  * [actionLabel], 버튼 이름
///  * [action], 버튼 이벤트
///  * [isOverlay], 바텀시트로 인해 스낵바가 가려지는 경우 사용함 //사용 할 경우 snackBar 이후 Navigator.Pop사용 주의
///
void tsShowSnackBar({
  required String content,
  String? actionLabel,
  void Function()? action,
  bool isOverlay = false,
  BuildContext? context,
  bool includeBottomHeight = false,
}) {
  int durationMilliseconds = 1000;

  ScaffoldMessenger.of(context ?? globalContext)
      .showSnackBar(
        SnackBar(
          content: SizedBox(
            child: Text(content, style: const TextStyle(fontSize: 14, height: 1.5)),
          ),
          duration: Duration(milliseconds: durationMilliseconds),
          behavior: SnackBarBehavior.floating,
          action: actionLabel != null
              ? SnackBarAction(
                  label: actionLabel,
                  onPressed: action!,
                )
              : null,
          margin: includeBottomHeight
              ? const EdgeInsets.only(bottom: 80, left: 16, right: 16)
              : const EdgeInsets.only(bottom: 16, left: 16, right: 16),
        ),
      )
      .closed
      .then(
        (value) => isSnackbarActive = true,
      );
}

/// URL연결(인터넷,전화,문자,이메일)
///
/// ```dart
/// url:'www.naver.com', urlType:UrlType.INTERNET -> 'https://www.naver.com'
/// url:'01012345678', urlType:UrlType.TEL -> 'tel:01012345678'
/// url:'01023456789', urlType:UrlType.SMS, body:'내용' -> 'sms:01023456789?body=내용'
/// url:'www.naver.com', urlType:UrlType.EMAIL, subject:'제목', body:'내용' -> 'mailto:www.naver.com?subject=제목&body=내용'
/// ```
///
Future<void> tsUrlLauncher({
  required String url,
  required UrlType urlType,

  ///이메일 제목
  String subject = '제목 입력 부분입니다.',

  ///이메일&문자 내용
  String body = '내용 입력 부분입니다.',
}) async {
  switch (urlType) {
    case UrlType.internet:
      if (url.startsWith("http://") || url.startsWith("https://")) {
        await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
      } else {
        await launchUrl(Uri.parse('https://$url'), mode: LaunchMode.externalApplication);
      }
      break;
    case UrlType.tel:
      await launchUrl(Uri.parse('tel:$url'));
      break;
    case UrlType.sms:
      await launchUrl(Uri.parse('sms:$url?body=$body')); //'sms:+39 348 060 888?body=hello%20there';
      break;
    case UrlType.email:
      await launchUrl(
          Uri.parse('mailto:$url?subject=$subject&body=$body')); //<email address>?subject=<subject>&body=<body>
      break;
  }
}

/// 메시지 - Show Bottom Sheet
Future<T?> tsShowBottomSheet<T>({
  BuildContext? context,
  required Widget widget,
  Color? backgroundColor,
  double? elevation,
  ShapeBorder? shape,
  Clip? clipBehavior,
  BoxConstraints? constraints,
  Color? barrierColor,
  bool isScrollControlled = false,
  double? heightFactor,
  bool useRootNavigator = false,
  bool isDismissible = true,
  bool enableDrag = true,
  RouteSettings? routeSettings,
  AnimationController? transitionAnimationController,
}) {
  return showModalBottomSheet(
    context: context ?? globalContext,
    builder: (context) {
      return FractionallySizedBox(
        heightFactor: heightFactor,
        child: SafeArea(
          top: false,
          left: false,
          right: false,
          bottom: true,
          child: widget,
        ),
      );
    },
    backgroundColor: backgroundColor,
    elevation: elevation,
    shape: shape ??
        const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        )),
    clipBehavior: clipBehavior,
    constraints: constraints,
    barrierColor: barrierColor,
    isScrollControlled: heightFactor != null ? true : isScrollControlled,
    useRootNavigator: useRootNavigator,
    isDismissible: isDismissible,
    enableDrag: enableDrag,
    routeSettings: routeSettings,
    transitionAnimationController: transitionAnimationController,
  );
}

/// 경로에 맞게 이미지정보 가지고 오기
///
/// Example
/// ```
/// value : 'assets/images/background.jpg'
/// ```
///
ImageProvider? tsGetImage(dynamic value) {
  if (value is String) {
    if (value.contains('assets')) {
      return AssetImage(value);
    } else if (value.contains('storage') || value.contains('file:')) {
      return FileImage(File(value));
    } else {
      return NetworkImage(value);
    }
  } else {
    if (value is File) {
      return FileImage(value);
    } else {
      return value;
    }
  }
}

///디바이스에 설치된 패키지 버전정보를 가져오기
Future<String> tsGetPackageVersion() async {
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  return packageInfo.version;
}

///디바이스에 설치된 패키지 앱이름를 가져오기
Future<String> tsGetPackageAppName() async {
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  return packageInfo.appName;
}

/// MultipartFile로 변환
Future<MultipartFile> tsGetSingleFile(String path) async {
  var fileName = path_lib.basename(path);
  final mimeType = lookupMimeType(path);
  MediaType? contentType;

  if (mimeType != null) {
    var mimeTypeResult = mimeType.split("/");
    contentType = MediaType(mimeTypeResult[0], mimeTypeResult[1]);
  }

  MultipartFile multipartFile = await MultipartFile.fromPath(
    "file",
    path,
    // field: "file",
    filename: fileName,
    contentType: contentType,
  );
  return multipartFile;
}

// 팝업
Future<T?> tsShowMenu<T>({
  required BuildContext context,
  required List<PopupMenuEntry<T>> items,
  RelativeRect? initPosition,
  double elevation = 8.0,
  Color? color,
  T? initialValue,
  String? semanticLabel,
  ShapeBorder? shape,
  bool useRootNavigator = false,
}) {
  RenderBox box = context.findRenderObject() as RenderBox;
  Offset position = box.localToGlobal(Offset.zero);

  return showMenu<T>(
    context: context,
    position: initPosition ??
        RelativeRect.fromLTRB(
            position.dx, position.dy + 50, 0.0, 0.0), //position where you want to show the menu on screen
    items: items,
    elevation: elevation,
    color: color,
    initialValue: initialValue,
    semanticLabel: semanticLabel,
    shape: shape ??
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
    useRootNavigator: useRootNavigator,
  );
}

Future<void> tsShowAlarmMenu({
  required BuildContext context,
  required Widget child,
  BoxDecoration? menuBoxDecoration,
  double? menuWidth,
  double? menuHeight,
  double? topOffset,
  double? bottomOffset,
  double? leftOffset,
  double? rightOffset,
}) async {
  await Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        animation = Tween(begin: 0.0, end: 1.0).animate(animation);
        return FadeTransition(
          opacity: animation,
          child: AlarmMenu(
            menuItem: child,
            menuBoxDecoration: menuBoxDecoration,
            menuWidth: menuWidth,
            menuHeight: menuHeight,
            topOffset: topOffset,
            bottomOffset: bottomOffset,
            leftOffset: leftOffset,
            rightOffset: rightOffset,
          ),
        );
      },
      fullscreenDialog: true,
      opaque: false,
    ),
  );
}
