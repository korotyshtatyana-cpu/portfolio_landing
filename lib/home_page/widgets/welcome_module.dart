import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../data/constants.dart';
import '../../theme/app_text_style.dart';
import 'about_me_text.dart';

class WelcomeModule extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final Color titleColor;
  final String backgroundImage;

  const WelcomeModule({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.titleColor,
    required this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: moduleHeight,
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
                        color: textColor,
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
                        color: textColor,
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
                        color: textColor,
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
                  Expanded(
                    child: AboutMe(
                      baseColor: titleColor,
                      highlightColor: textColor,
                    ),
                  ),
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
