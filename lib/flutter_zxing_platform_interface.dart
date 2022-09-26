import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_zxing_method_channel.dart';

abstract class FlutterZxingPlatform extends PlatformInterface {
  /// Constructs a FlutterZxingPlatform.
  FlutterZxingPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterZxingPlatform _instance = MethodChannelFlutterZxing();

  /// The default instance of [FlutterZxingPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterZxing].
  static FlutterZxingPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterZxingPlatform] when
  /// they register themselves.
  static set instance(FlutterZxingPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
