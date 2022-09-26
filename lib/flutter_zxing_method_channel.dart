import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_zxing_platform_interface.dart';

/// An implementation of [FlutterZxingPlatform] that uses method channels.
class MethodChannelFlutterZxing extends FlutterZxingPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final MethodChannel methodChannel = const MethodChannel('flutter_zxing');

  @override
  Future<String?> getPlatformVersion() async {
    final String? version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
