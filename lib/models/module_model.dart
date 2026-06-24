import 'package:flutter/widgets.dart';

import 'module_orientation_enum.dart';

class ModuleModel {
  final String menuName;
  final Color backgroundColor;
  final Color textColor;
  final Color titleColor;
  final String backgroundImage;
  final ModuleOrientationEnum moduleOrientationEnum;
  final String title;
  final String projectName;
  final Function() moreFunction;
  final Function() downloadFunction;

  ModuleModel({
    required this.menuName,
    required this.backgroundColor,
    required this.textColor,
    required this.titleColor,
    required this.backgroundImage,
    required this.moduleOrientationEnum,
    required this.title,
    required this.projectName,
    required this.moreFunction,
    required this.downloadFunction,
  });
}
