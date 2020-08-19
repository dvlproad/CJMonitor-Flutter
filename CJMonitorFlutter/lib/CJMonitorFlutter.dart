import 'dart:async';

import 'package:flutter/services.dart';

class CJMonitorFlutter {
  static const MethodChannel _channel =
      const MethodChannel('CJMonitorFlutter');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> get showLogSuspendWindow async {
    final String version = await _channel.invokeMethod('showLogSuspendWindow');
    return version;
  }
}
