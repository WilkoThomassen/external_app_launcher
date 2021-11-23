import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:external_app_launcher/external_app_launcher.dart';

void main() {
  const MethodChannel channel = MethodChannel('external_app_launcher');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  // test('getPlatformVersion', () async {
  //   expect(await ExternalAppLauncher.platformVersion, '42');
  // });
}
