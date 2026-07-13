import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';

class ImageMode extends StatefulWidget {
  final String image;

  const ImageMode({super.key, required this.image});

  @override
  State<ImageMode> createState() => _ImageModeState();
}

class _ImageModeState extends State<ImageMode> {
  late TransformationController _transformationController;

  @override
  void initState() {
    super.initState();
    _transformationController = TransformationController();
  }

  @override
  void dispose() {
    _transformationController.dispose();
    super.dispose();
  }

  void _resetTransform() {
    _transformationController.value = Matrix4.identity();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InteractiveViewer(
        transformationController: _transformationController,
        minScale: 0.1,
        maxScale: 4,
          constrained: false,
        boundaryMargin: const EdgeInsets.all(20.0),
        child: GestureDetector(
          onDoubleTap: _resetTransform,
          child: Image.network(
            widget.image,
            fit: BoxFit.contain,
            loadingBuilder:
                (
                  BuildContext context,
                  Widget child,
                  ImageChunkEvent? loadingProgress,
                ) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      color: AppColors.darkGreen,
                    ),
                  );
                },
            errorBuilder:
                (BuildContext context, Object error, StackTrace? stackTrace) {
                  return Center(
                    child: Text(
                      'Не удалось загрузить изображение',
                      style: TextStyle(color: AppColors.darkGreen),
                    ),
                  );
                },
          ),
        ),
      ),
    );
  }
}
