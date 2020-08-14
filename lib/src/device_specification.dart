import 'package:flutter/material.dart';

class DeviceSpecification {
  final Size size;
  final EdgeInsets padding;
  final EdgeInsets paddingLandscape;
  final String name;
  final double cornerRadius;
  final Size notchSize;
  final bool tablet;
  final double navBarHeight;

  const DeviceSpecification({
    @required this.name,
    @required this.size,
    this.padding = EdgeInsets.zero,
    this.paddingLandscape = EdgeInsets.zero,
    this.cornerRadius = 0.0,
    this.notchSize = Size.zero,
    this.tablet = false,
    this.navBarHeight = 48.0,
  })  : assert(name != null),
        assert(size != null),
        assert(padding != null),
        assert(paddingLandscape != null),
        assert(cornerRadius != null && cornerRadius >= 0),
        assert(notchSize != null),
        assert(tablet != null),
        assert(navBarHeight != null && navBarHeight >= 0);

  // -- iOS

  static const defaultIosPadding = EdgeInsets.only(top: 20);
  static const defaultIosCornerRadius = 20.0;

  static const iPhoneSE = DeviceSpecification(
    name: 'iPhone SE',
    size: Size(320.0, 568.0),
    padding: defaultIosPadding,
    paddingLandscape: EdgeInsets.zero,
  );
  static const iPhone8 = DeviceSpecification(
    name: 'iPhone 8',
    size: Size(375.0, 667.0),
    padding: defaultIosPadding,
    paddingLandscape: EdgeInsets.zero,
  );
  static const iPhone8Plus = DeviceSpecification(
    name: 'iPhone 8 Plus',
    size: Size(414.0, 736.0),
    padding: defaultIosPadding,
    paddingLandscape: EdgeInsets.zero,
  );
  static const iPhoneX = DeviceSpecification(
    name: 'iPhone X',
    size: Size(375.0, 812.0),
    cornerRadius: defaultIosCornerRadius,
    padding: EdgeInsets.only(top: 44.0, bottom: 34.0),
    paddingLandscape: EdgeInsets.only(left: 44.0, right: 44.0, bottom: 21.0),
    notchSize: Size(209.0, 30.0),
  );
  static const iPhoneXsMax = DeviceSpecification(
    name: 'iPhone Xs Max',
    size: Size(414.0, 896.0),
    cornerRadius: defaultIosCornerRadius,
    padding: EdgeInsets.only(top: 44.0, bottom: 34.0),
    paddingLandscape: EdgeInsets.only(left: 44.0, right: 44.0, bottom: 21.0),
    notchSize: Size(209.0, 30.0),
  );
  static const iPadAir = DeviceSpecification(
    name: 'iPad Air',
    size: Size(768.0, 1024.0),
    padding: defaultIosPadding,
    tablet: true,
  );
  static const iPadPro10 = DeviceSpecification(
    name: 'iPad Pro 10.5"',
    size: Size(834.0, 1112.0),
    padding: defaultIosPadding,
    tablet: true,
  );
  static const iPadPro11 = DeviceSpecification(
    name: 'iPad Pro 11"',
    size: Size(834.0, 1194.0),
    padding: EdgeInsets.only(top: 24.0, bottom: 20.0),
    tablet: true,
    cornerRadius: defaultIosCornerRadius,
  );
  static const iPadPro12 = DeviceSpecification(
    name: 'iPad Pro 12.9"',
    size: Size(1024.0, 1366.0),
    padding: defaultIosPadding,
    tablet: true,
  );
  static const iPadPro12_3Gen = DeviceSpecification(
    name: 'iPad Pro 12.9" 3rd gen',
    size: Size(1024.0, 1366.0),
    padding: EdgeInsets.only(top: 24.0, bottom: 20.0),
    cornerRadius: defaultIosCornerRadius,
    tablet: true,
  );

  // --- Android

  static const defaultAndroidPadding = EdgeInsets.only(top: 24.0);
  static const defaultAndroidCornerRadius = 15.0;

  static const androidOne = DeviceSpecification(
    name: 'Android One',
    size: Size(320.0, 569.0),
    padding: defaultAndroidPadding,
  );
  static const nexus5 = DeviceSpecification(
    name: 'Nexus 5',
    size: Size(360.0, 640.0),
    padding: defaultAndroidPadding,
  );
  static const motorolaG7 = DeviceSpecification(
    name: 'Motorola G7',
    size: Size(360.0, 720.0),
    padding: EdgeInsets.only(top: 32.0),
    notchSize: Size(160.0, 32.0),
    cornerRadius: defaultAndroidCornerRadius,
  );
  static const galaxyS8 = DeviceSpecification(
    name: 'Galaxy S8',
    size: Size(360.0, 740.0),
    padding: defaultAndroidPadding,
    cornerRadius: defaultAndroidCornerRadius,
  );
  static const nexus4 = DeviceSpecification(
    name: 'Nexus 4',
    size: Size(384.0, 640.0),
    padding: defaultAndroidPadding,
  );
  static const nexus6 = DeviceSpecification(
    name: 'Nexus 6',
    size: Size(411.0, 731.0),
    padding: defaultAndroidPadding,
  );
  static const pixel3 = DeviceSpecification(
    name: 'Pixel 3',
    size: Size(412.0, 824.0),
    padding: defaultAndroidPadding,
    cornerRadius: defaultAndroidCornerRadius,
  );
  static const pixel3XL = DeviceSpecification(
    name: 'Pixel 3 XL',
    size: Size(412.0, 847.0),
    padding: defaultAndroidPadding,
    cornerRadius: defaultAndroidCornerRadius,
  );
  static const galaxyNote4 = DeviceSpecification(
    name: 'Galaxy Note 4',
    size: Size(480.0, 853.0),
    padding: defaultAndroidPadding,
  );
  static const xperiaC4 = DeviceSpecification(
    name: 'Xperia C4',
    size: Size(540.0, 960.0),
    padding: defaultAndroidPadding,
  );
  static const nexus7 = DeviceSpecification(
    name: 'Nexus 7',
    size: Size(600.0, 960.0),
    padding: defaultAndroidPadding,
    tablet: true,
  );
  static const nexus9 = DeviceSpecification(
    name: 'Nexus 9',
    size: Size(768.0, 1024.0),
    padding: defaultAndroidPadding,
    tablet: true,
  );
  static const nexus10 = DeviceSpecification(
    name: 'Nexus 10',
    size: Size(800.0, 1280.0),
    padding: defaultAndroidPadding,
    tablet: true,
  );
}
