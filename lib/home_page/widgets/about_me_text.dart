import 'package:flutter/material.dart';
import '../../theme/adaptive_service.dart';
import '../../theme/app_text_style.dart';

class AboutMe extends StatelessWidget {
  final Color baseColor;
  final Color highlightColor;
  final ScreenResolution screenResolution;

  const AboutMe({
    super.key,
    required this.baseColor,
    required this.screenResolution,
    required this.highlightColor,
  });

  @override
  Widget build(BuildContext context) {
    double baseSize;
    switch (screenResolution) {
      case ScreenResolution.mobile:
        baseSize = 14;
      case ScreenResolution.tablet:
        baseSize = 16;
      case ScreenResolution.desktop:
        baseSize = 18;
    }

    final double highlightedSize = baseSize * 1.4;

    return RichText(
      textAlign: screenResolution == ScreenResolution.desktop
          ? TextAlign.left
          : TextAlign.center,
      text: TextSpan(
        style: AppTextStyle.basic.copyWith(
          color: baseColor,
          fontSize: baseSize,
          fontWeight: FontWeight.w400,
          height: 1.6,
        ),
        children: <TextSpan>[
          const TextSpan(
            text: 'потому что хочу не просто пользоваться технологиями, а ',
          ),
          TextSpan(
            text: 'сама создавать то, чем мир будет пользоваться завтра. ',
            style: AppTextStyle.basic.copyWith(
              color: highlightColor,
              fontWeight: FontWeight.w400,
              fontSize: highlightedSize,
            ),
          ),
          const TextSpan(
            text:
                'Настоящая инженерия для меня — это искусство, где нужны не только расчёты, но и чувство гармонии. Я хочу быть инженером-созидателем, который видит плоды своего труда и переходит от слов к делу. ',
          ),
          TextSpan(
            text: '\nМоя мечта',
            style: AppTextStyle.basic.copyWith(
              color: highlightColor,
              fontWeight: FontWeight.w400,
              fontSize: highlightedSize,
            ),
          ),
          const TextSpan(
            text:
                ' — однажды сказать: «В этой системе, помогающей людям, есть ',
          ),
          TextSpan(
            text: 'частичка моей мысли',
            style: AppTextStyle.basic.copyWith(
              color: highlightColor,
              fontWeight: FontWeight.w400,
              fontSize: highlightedSize,
            ),
          ),
          const TextSpan(text: '».'),
        ],
      ),
    );
  }
}
