import 'package:flutter/material.dart';

import '../../models/module_details_type.dart';
import '../../models/module_orientation_enum.dart';
import 'app_button.dart';
import 'module_basic_text.dart';
import 'module_details/see_more_modal.dart';
import 'module_title.dart';

class ModuleContent extends StatelessWidget {
  final Color textColor;
  final Color accentColor;
  final ModuleOrientationEnum moduleOrientationEnum;
  final ModuleDetailsModel moduleDetailsModel;
  final Function() downloadFunction;
  final String title;
  final String projectName;

  const ModuleContent({
    super.key,
    required this.moduleOrientationEnum,
    required this.moduleDetailsModel,
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
        Wrap(
          crossAxisAlignment: moduleOrientationEnum == ModuleOrientationEnum.right
              ? WrapCrossAlignment.start
              : WrapCrossAlignment.end,
          spacing: 16,
          runSpacing: 16,
          children: [
          AppButton(
                text: 'Подробнее',
                color: accentColor,
                onTap: () {
                  _showDetailModal(context, moduleDetailsModel);
                },
              ),
              // const SizedBox(width: 64),
              AppButton(
                text: 'Скачать',
                color: accentColor,
                icon: Icons.file_download,
                onTap: downloadFunction,
              ),
          ],
        ),
        // Row(
        //   mainAxisAlignment:
        //       moduleOrientationEnum == ModuleOrientationEnum.right
        //       ? MainAxisAlignment.start
        //       : MainAxisAlignment.end,
        //   children: <Widget>[
        //     AppButton(
        //       text: 'Подробнее',
        //       color: accentColor,
        //       onTap: () {
        //         _showDetailModal(context, moduleDetailsModel);
        //       },
        //     ),
        //     const SizedBox(width: 64),
        //     AppButton(
        //       text: 'Скачать',
        //       color: accentColor,
        //       icon: Icons.file_download,
        //       onTap: downloadFunction,
        //     ),
        //   ],
        // ),
      ],
    );
  }

  void _showDetailModal(
    BuildContext context,
    ModuleDetailsModel moduleDetailsModel,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) => SeeMoreModal(
        moduleDetailsModel: moduleDetailsModel,
        title: projectName,
        content:
            'Здесь будет подробное описание проекта "$projectName". '
            'Вы можете добавить сюда любую информацию: '
            'цели, задачи, используемые технологии, результаты и т.д.',
      ),
    );
  }
}
