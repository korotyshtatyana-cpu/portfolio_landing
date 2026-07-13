import 'package:flutter/cupertino.dart';

enum ScreenResolution { mobile, tablet, desktop }

class AdaptiveService {
  static ScreenResolution getScreenResolution(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      return ScreenResolution.mobile;
    } else if (screenWidth < 900) {
      return ScreenResolution.tablet;
    } else if (screenWidth < 1200) {
      return ScreenResolution.desktop;
    } else {
      return ScreenResolution.desktop;
    }
  }
}
