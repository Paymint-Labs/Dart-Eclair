import 'dart:async';

import 'package:flutter/services.dart';

class DartEclair {
  static const MethodChannel _channel =
      const MethodChannel('dart_eclair');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
