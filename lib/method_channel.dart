import 'package:flutter/services.dart';

final MethodChannel _channel = MethodChannel('romil-channel-name');

String bettery = "";
String deviceName = "";

///Create Function for call method
Future<void> getRomilName() async {
  try {
    final result = await _channel.invokeMethod('getBatteryLevel');
    print(result);
    bettery = result.toString();
  } on PlatformException catch (e) {
    print('Error: ${e.message}');
  }
}

Future<void> getDeviceNameRomil() async {
  try {
    final result = await _channel.invokeMethod('getDeviceName');
    print(result);
    deviceName = result.toString();
  } on PlatformException catch (e) {
    print('Error: ${e.message}');
  }
}

///How to create method channel in flutter
///
/// first create Method channel
/// and Invoke Method with Proper name that is defined in MainActivity Class In Android
/// Create Private Channel in MainActivity and use them
/// Configure FutterEngine Method in MainActivity for Flutter Engine.
///
///
