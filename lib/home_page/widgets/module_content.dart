import 'package:flutter/material.dart';

import '../../models/module_orientation_enum.dart';
import 'app_button.dart';
import 'module_basic_text.dart';
import 'module_title.dart';

class ModuleContent extends StatelessWidget {
  final Color textColor;
  final Color accentColor;
  final ModuleOrientationEnum moduleOrientationEnum;
  final Function() moreFunction;
  final Function() downloadFunction;
  final String title;
  final String projectName;

  const ModuleContent({
    super.key,
    required this.moduleOrientationEnum,
    required this.moreFunction,
    required this.downloadFunction,
    required this.title,
    required this.projectName,
    required this.textColor,
    required this.accentColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: moduleOrientationEnum == ModuleOrientationEnum.right
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ModuleTitle(color: textColor, text: title),
        const SizedBox(height: 16),
        ModuleBasicText(
          moduleOrientationEnum: moduleOrientationEnum,
          color: accentColor,
          text: projectName,
        ),
        const SizedBox(height: 64),
        Row(
          mainAxisAlignment:
              moduleOrientationEnum == ModuleOrientationEnum.right
              ? MainAxisAlignment.start
              : MainAxisAlignment.end,
          children: <Widget>[
            AppButton(
              text: 'Подробнее',
              color: accentColor,
              onTap: moreFunction,
            ),
            const SizedBox(width: 64),
            AppButton(
              text: 'Скачать',
              color: accentColor,
              icon: Icons.file_download,
              onTap: downloadFunction,
            ),
          ],
        ),
      ],
    );
  }
}
