import 'package:flutter/material.dart';

class AppTextStyle {
  static const String _montserratFamily = 'Montserrat';

  static final TextStyle title = const TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    fontFamily: _montserratFamily,
  );

  static final TextStyle basic = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: _montserratFamily,
  );
}

