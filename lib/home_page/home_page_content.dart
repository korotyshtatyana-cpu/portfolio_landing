import 'package:flutter/material.dart';
import 'package:portfolio/home_page/widgets/module_layout.dart';
import 'package:portfolio/theme/app_images.dart';

import '../theme/app_colors.dart';
import 'widgets/module_1.dart';
import 'widgets/module_2.dart';
import 'widgets/module_3.dart';
import 'widgets/module_4.dart';
import 'widgets/module_5.dart';
import 'widgets/module_7.dart';
import 'widgets/module_orientation_enum.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Module1(
            backgroundColor: AppColors.pastelGreen,
            backgroundImage: AppImages.mainPhoto,
          ),
          ModuleLayout(
            backgroundColor: AppColors.palePink,
            backgroundImage: AppImages.mainPhoto,
            moduleOrientationEnum: ModuleOrientationEnum.right,
            child: Module2(
              moduleOrientationEnum: ModuleOrientationEnum.right,
              moreFunction: () {},
              downloadFunction: () {},
            ),
          ),
          ModuleLayout(
            backgroundColor: AppColors.paleOrange,
            backgroundImage: AppImages.mainPhoto,
            moduleOrientationEnum: ModuleOrientationEnum.left,
            child: Module3(
              moduleOrientationEnum: ModuleOrientationEnum.left,
              moreFunction: () {},
              downloadFunction: () {},
            ),
          ),
          ModuleLayout(
            backgroundColor: AppColors.pastelOrange,
            backgroundImage: AppImages.mainPhoto,
            moduleOrientationEnum: ModuleOrientationEnum.right,
            child: Module4(
              moduleOrientationEnum: ModuleOrientationEnum.right,
              moreFunction: () {},
              downloadFunction: () {},
            ),
          ),
          ModuleLayout(
            backgroundColor: AppColors.darkGreen,
            backgroundImage: AppImages.mainPhoto,
            moduleOrientationEnum: ModuleOrientationEnum.left,
            child: Module5(
              moduleOrientationEnum: ModuleOrientationEnum.left,
              moreFunction: () {},
              downloadFunction: () {},
            ),
          ),
          ModuleLayout(
            backgroundColor: AppColors.pastelGreen,
            backgroundImage: AppImages.mainPhoto,
            moduleOrientationEnum: ModuleOrientationEnum.right,
            child: Module7(
              moduleOrientationEnum: ModuleOrientationEnum.right,
              moreFunction: () {},
              downloadFunction: () {},
            ),
          ),
        ],
      ),
    );
  }
}
