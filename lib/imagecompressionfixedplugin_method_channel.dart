import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'imagecompressionfixedplugin_platform_interface.dart';

/// An implementation of [ImagecompressionfixedpluginPlatform] that uses method channels.
class MethodChannelImagecompressionfixedplugin extends ImagecompressionfixedpluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('imagecompressionfixedplugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
