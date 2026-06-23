import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text_style.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    double baseSize;
    if (screenWidth < 600) {
      baseSize = 14;
    } else if (screenWidth < 900) {
      baseSize = 16;
    } else if (screenWidth < 1200) {
      baseSize = 18;
    } else {
      baseSize = 18;
    }

    final double highlightedSize = baseSize * 1.4;

    return RichText(
      text: TextSpan(
        style: AppTextStyle.basic.copyWith(
          color: AppColors.basicText,
          fontSize: baseSize,
          fontWeight: FontWeight.w400,
          height: 1.6,
        ),
        children: [
          TextSpan(
            text: 'потому что хочу не просто пользоваться технологиями, а ',
          ),
          TextSpan(
            text: 'сама создавать то, чем мир будет пользоваться завтра. ',
            style: AppTextStyle.basic.copyWith(
              color: AppColors.darkGreen,
              fontWeight: FontWeight.w400,
              fontSize: highlightedSize,
            ),
          ),
          TextSpan(
            text: 'Настоящая инженерия для меня — это искусство, где нужны не только расчёты, но и чувство гармонии. Я хочу быть инженером-созидателем, который видит плоды своего труда и переходит от слов к делу. ',
          ),
          TextSpan(
            text: '\nМоя мечта',
            style: AppTextStyle.basic.copyWith(
              color: AppColors.darkGreen,
              fontWeight: FontWeight.w400,
              fontSize: highlightedSize,
            ),
          ),
          TextSpan(
            text: ' — однажды сказать: «В этой системе, помогающей людям, есть ',
          ),
          TextSpan(
            text: 'частичка моей мысли',
            style: AppTextStyle.basic.copyWith(
              color: AppColors.darkGreen,
              fontWeight: FontWeight.w400,
              fontSize: highlightedSize,
            ),
          ),
          TextSpan(text: '».'),
        ],
      ),
      softWrap: true,
      textAlign: TextAlign.start,
    );
  }
}