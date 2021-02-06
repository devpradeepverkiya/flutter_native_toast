import 'dart:async';

import 'package:flutter/services.dart';

class FlutterToast {
  static const MethodChannel _channel = const MethodChannel('flutter_toast');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion',{"Version_name ":"joy"});
    return version;
  }
  

  static show_toast(String msg) {
    _channel.invokeMethod('show_toast', {"msg": msg});
  }
}
