import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import 'app_button.dart';
import 'module_basic_text.dart';
import 'module_orientation_enum.dart';
import 'module_title.dart';

class Module3 extends StatelessWidget {
  final Function() moreFunction;
  final Function() downloadFunction;
  final ModuleOrientationEnum moduleOrientationEnum;

  const Module3({
    super.key,
    required this.moduleOrientationEnum,
    required this.moreFunction,
    required this.downloadFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ModuleTitle(
          moduleOrientationEnum: moduleOrientationEnum,
          color: AppColors.basicText,
          text: 'Презентация',
        ),
        SizedBox(height: 16),
        ModuleBasicText(
          moduleOrientationEnum: moduleOrientationEnum,
          color: AppColors.primaryColor,
          text: '«Профессия инженера-конструктора vs инженера-технолога»',
        ),
        SizedBox(height: 48),
        Row(
          mainAxisAlignment:
              moduleOrientationEnum == ModuleOrientationEnum.right
              ? MainAxisAlignment.start
              : MainAxisAlignment.end,
          children: [
            AppButton(
              text: 'Подробнее',
              color: AppColors.primaryColor,
              onTap: moreFunction,
            ),
            SizedBox(width: 64),
            AppButton(
              text: 'Скачать',
              color: AppColors.primaryColor,
              icon: Icons.file_download,
              onTap: downloadFunction,
            ),
          ],
        ),
      ],
    );
  }
}
