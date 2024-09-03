
import 'imagecompressionfixedplugin_platform_interface.dart';

class Imagecompressionfixedplugin {
  Future<String?> getPlatformVersion() {
    return ImagecompressionfixedpluginPlatform.instance.getPlatformVersion();
  }
}
