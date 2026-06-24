import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:portfolio/models/module_orientation_enum.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_text_style.dart';

class ModuleTitle extends StatelessWidget {
  final Color color;
  final String text;

  const ModuleTitle({super.key, required this.color, required this.text,});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: AppTextStyle.title.copyWith(
        color: color,
        fontWeight: FontWeight.w200,
        fontSize: 40,
      ),
      maxLines: 1,
      minFontSize: 16,
      stepGranularity: 1,
    );
  }
}
