import 'package:flutter/services.dart';

class FlutterToast {
  static const MethodChannel _channel = const MethodChannel('flutter_toast');
  static show_toast(String msg) {
    _channel.invokeMethod('show_toast', {"msg": msg});
  }
}
