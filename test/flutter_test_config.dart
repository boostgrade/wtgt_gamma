import 'dart:async';

import 'package:golden_toolkit/golden_toolkit.dart';

const _devices = [
  Device.phone,
  Device.iphone11,
  Device.tabletLandscape,
  Device.tabletPortrait,
];

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  return GoldenToolkit.runWithConfiguration(
    () async {
      await loadAppFonts();
      await testMain();
    },
    config: GoldenToolkitConfiguration(
      defaultDevices: _devices,
      enableRealShadows: true,
    ),
  );
}
