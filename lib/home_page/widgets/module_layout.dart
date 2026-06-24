import 'package:flutter/material.dart';

import '../../data/constants.dart';
import '../../models/module_orientation_enum.dart';

class ModuleLayout extends StatelessWidget {
  final ModuleOrientationEnum moduleOrientationEnum;
  final Color backgroundColor;
  final Widget child;
  final String backgroundImage;

  const ModuleLayout({
    super.key,
    required this.moduleOrientationEnum,
    required this.backgroundColor,
    required this.backgroundImage,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: moduleHeight,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.fitHeight,
            alignment: moduleOrientationEnum == ModuleOrientationEnum.right
                ? AlignmentDirectional.centerEnd
                : AlignmentDirectional.centerStart,
          ),
        ),
        child: Padding(
          padding: moduleOrientationEnum == ModuleOrientationEnum.right
              ? const EdgeInsets.only(
                  top: 64,
                  bottom: 64,
                  left: 100,
                  right: 200,
                )
              : const EdgeInsets.only(
                  top: 64,
                  bottom: 64,
                  left: 200,
                  right: 100,
                ),
          child: child,
        ),
      ),
    );
  }
}
