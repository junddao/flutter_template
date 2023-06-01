import 'package:smatii/index.dart';

extension DynamicExtension on Type {
  /// class 이름 반환
  ///
  /// Example:
  /// ```dart
  /// (SampleClass).routeName // 'sample_class'
  /// 
  /// 
  /// ```
  String get routeName {
    return this.toString().camelCaseToUnderscore();
  }
}