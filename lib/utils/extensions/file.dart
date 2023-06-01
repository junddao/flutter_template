

import 'dart:io';

import 'package:smatii/utils/extensions/num.dart';


extension FileExtension on File {

  /// 
  ///
  /// Example:
  /// ```dart
  /// 
  /// ```
  getFileSize({int decimals = 2}) {
    int bytes = lengthSync();
    return bytes.bytesToString(decimals: decimals);
  }
}