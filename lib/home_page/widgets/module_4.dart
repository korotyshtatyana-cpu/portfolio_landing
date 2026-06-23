import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import 'app_button.dart';
import 'module_basic_text.dart';
import 'module_orientation_enum.dart';
import 'module_title.dart';

class Module4 extends StatelessWidget {
  final ModuleOrientationEnum moduleOrientationEnum;
  final Function() moreFunction;
  final Function() downloadFunction;

  const Module4({
    super.key,
    required this.moduleOrientationEnum,
    required this.moreFunction,
    required this.downloadFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
          color: AppColors.palePink,
          text: '«Содержание деятельности инженера-энергетика»',
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
              color: AppColors.palePink,
              onTap: moreFunction,
            ),
            SizedBox(width: 64),
            AppButton(
              text: 'Скачать',
              color: AppColors.palePink,
              icon: Icons.file_download,
              onTap: downloadFunction,
            ),
          ],
        ),
      ],
    );
  }
}
