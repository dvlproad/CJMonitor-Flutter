import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cj_monitor_flutter/cj_monitor_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('cj_monitor_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await CjMonitorFlutter.platformVersion, '42');
  });
}
