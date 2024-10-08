import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'imagecompressionfixedplugin_method_channel.dart';

abstract class ImagecompressionfixedpluginPlatform extends PlatformInterface {
  /// Constructs a ImagecompressionfixedpluginPlatform.
  ImagecompressionfixedpluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static ImagecompressionfixedpluginPlatform _instance = MethodChannelImagecompressionfixedplugin();

  /// The default instance of [ImagecompressionfixedpluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelImagecompressionfixedplugin].
  static ImagecompressionfixedpluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ImagecompressionfixedpluginPlatform] when
  /// they register themselves.
  static set instance(ImagecompressionfixedpluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
