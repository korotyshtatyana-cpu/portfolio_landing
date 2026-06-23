import 'package:flutter/material.dart';
import 'package:portfolio/home_page/widgets/module_basic_text.dart';
import 'package:portfolio/home_page/widgets/module_orientation_enum.dart';
import 'package:portfolio/home_page/widgets/module_title.dart';

import '../../theme/app_colors.dart';
import 'app_button.dart';

class Module2 extends StatelessWidget {
  final ModuleOrientationEnum moduleOrientationEnum;
  final Function() moreFunction;
  final Function() downloadFunction;

  const Module2({
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
          text: 'Практическая работа',
        ),
        SizedBox(height: 16),
        ModuleBasicText(
          moduleOrientationEnum: moduleOrientationEnum,
          color: AppColors.paleOrange,
          text: '«Разработка простейшего роботизированного устройства»',
        ),
        SizedBox(height: 64),
        Row(
          mainAxisAlignment:
              moduleOrientationEnum == ModuleOrientationEnum.right
              ? MainAxisAlignment.start
              : MainAxisAlignment.end,
          children: [
            AppButton(
              text: 'Подробнее',
              color: AppColors.paleOrange,
              onTap: moreFunction,
            ),
            SizedBox(width: 64),
            AppButton(
              text: 'Скачать',
              color: AppColors.paleOrange,
              icon: Icons.file_download,
              onTap: downloadFunction,
            ),
          ],
        ),
      ],
    );
  }
}
