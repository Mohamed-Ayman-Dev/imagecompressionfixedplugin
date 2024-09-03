import 'package:flutter_test/flutter_test.dart';
import 'package:imagecompressionfixedplugin/imagecompressionfixedplugin.dart';
import 'package:imagecompressionfixedplugin/imagecompressionfixedplugin_platform_interface.dart';
import 'package:imagecompressionfixedplugin/imagecompressionfixedplugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockImagecompressionfixedpluginPlatform
    with MockPlatformInterfaceMixin
    implements ImagecompressionfixedpluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ImagecompressionfixedpluginPlatform initialPlatform = ImagecompressionfixedpluginPlatform.instance;

  test('$MethodChannelImagecompressionfixedplugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelImagecompressionfixedplugin>());
  });

  test('getPlatformVersion', () async {
    Imagecompressionfixedplugin imagecompressionfixedpluginPlugin = Imagecompressionfixedplugin();
    MockImagecompressionfixedpluginPlatform fakePlatform = MockImagecompressionfixedpluginPlatform();
    ImagecompressionfixedpluginPlatform.instance = fakePlatform;

    expect(await imagecompressionfixedpluginPlugin.getPlatformVersion(), '42');
  });
}
