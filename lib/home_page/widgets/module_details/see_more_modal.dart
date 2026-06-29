import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../../models/module_details_type.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_text_style.dart';
import '../app_button.dart';
import 'presentation_mode.dart';

class SeeMoreModal extends StatelessWidget {
  final String title;
  final String content;
  final ModuleDetailsModel moduleDetailsModel;

  const SeeMoreModal({
    super.key,
    required this.title,
    required this.content,
    required this.moduleDetailsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.primaryColor,
      insetPadding: const EdgeInsets.all(32),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: AutoSizeText(
                    title,
                    style: AppTextStyle.title.copyWith(
                      color: AppColors.darkGreen,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.close, color: Colors.grey[400]),
                ),
              ],
            ),
            Divider(color: AppColors.middleDartText, height: 32),

            Expanded(
              child: (moduleDetailsModel.presentationImages != null)
                  ? PresentationMode(
                      images:
                          moduleDetailsModel.presentationImages ?? <String>[],
                    )
                  : (moduleDetailsModel.text != null)
                  ? Text('text mode')
                  : (moduleDetailsModel.image != null)
                  ? Text('image mode')
                  : Text('no content'),
            ),

            const SizedBox(height: 32),

            SizedBox(
              width: double.infinity,
              child: AppButton(
                onTap: () => Navigator.pop(context),
                text: 'Закрыть',
                color: AppColors.darkGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
