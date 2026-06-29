import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../models/module_orientation_enum.dart';
import '../../theme/app_text_style.dart';

class ModuleBasicText extends StatelessWidget {
  final ModuleOrientationEnum moduleOrientationEnum;
  final Color color;
  final String text;

  const ModuleBasicText({
    super.key,
    required this.moduleOrientationEnum,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: AppTextStyle.title.copyWith(
        color: color,
        fontWeight: FontWeight.w300,
        fontSize: 70,
        height: 0.8,
      ),
      maxLines: 4,
      textAlign: moduleOrientationEnum == ModuleOrientationEnum.right
          ? TextAlign.start
          : TextAlign.end,
    );
  }
}
