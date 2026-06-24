import 'package:flutter/material.dart';

import '../../theme/app_text_style.dart';

class AppButton extends StatelessWidget {
  final Function onTap;
  final Color color;
  final String text;
  final IconData? icon;

  const AppButton({
    super.key,
    required this.onTap,
    required this.color,
    required this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onTap(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2, color: color),
        ),
        child: Row(
          children: <Widget>[
            if (icon != null) ...<Widget>{
              Icon(Icons.file_download, color: color),
              const SizedBox(width: 8),
            },
            Text(
              text,
              style: AppTextStyle.title.copyWith(
                color: color,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
