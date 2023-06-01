import 'package:logger/logger.dart';

/// 로그 클래스 호출
/// 
/// ```dart
/// logger.d('Log message with 2 methods');
/// logger.e('Error! Something bad happened', 'Test Error');
/// ```
var logger = Logger();

/// 로그 클래스 호출(표시할 메서드 0)
///
/// ```dart
/// loggerNoStack.i('Info message');
/// loggerNoStack.w('Just a warning!');
/// loggerNoStack.v({'key': 5, 'value': 'something'});
/// ```
var loggerNoStack = Logger(
    printer: PrettyPrinter(methodCount: 0),
  );
  
  