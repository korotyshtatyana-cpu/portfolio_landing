import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_text_style.dart';
import 'about_me_text.dart';

class Module1 extends StatelessWidget {
  final Color backgroundColor;

  final String backgroundImage;

  const Module1({
    super.key,
    required this.backgroundColor,
    required this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 700,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.fitHeight,
            alignment: AlignmentDirectional(-1, 0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 32),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: screenWidth * 0.07),
                  Expanded(
                    child: AutoSizeText(
                      'Почему я выбираю',
                      style: AppTextStyle.title.copyWith(
                        color: AppColors.darkGreen,
                        fontWeight: FontWeight.w200,
                        fontSize: 300,
                        height: 0.8,
                      ),
                      maxLines: 1,
                      stepGranularity: 1,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.15),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(width: screenWidth * 0.4),
                  Expanded(
                    child: AutoSizeText(
                      'инженерную',
                      style: AppTextStyle.title.copyWith(
                        color: AppColors.darkGreen,
                        fontWeight: FontWeight.w400,
                        fontSize: 300,
                        height: 0.8,
                      ),
                      maxLines: 1,
                      stepGranularity: 1,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.05),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: screenWidth * 0.3),
                  Expanded(
                    child: AutoSizeText(
                      'профессию',
                      style: AppTextStyle.title.copyWith(
                        color: AppColors.darkGreen,
                        fontWeight: FontWeight.w200,
                        fontSize: 300,
                        height: 0.8,
                      ),
                      maxLines: 1,
                      stepGranularity: 1,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.1),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  SizedBox(width: screenWidth * 0.4),
                  Expanded(child: const AboutMe()),
                  SizedBox(width: screenWidth * 0.1),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
