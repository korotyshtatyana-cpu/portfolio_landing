import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';

class PresentationMode extends StatefulWidget {
  final List<String> images;

  const PresentationMode({super.key, required this.images});

  @override
  State<PresentationMode> createState() => _PresentationModeState();
}

class _PresentationModeState extends State<PresentationMode> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.65,
          child: PageView(
            controller: _pageController,
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: widget.images.map((String image) {
              return Image.asset(image, fit: BoxFit.contain);
            }).toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(widget.images.length, (int index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: _currentPage == index ? 24 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: _currentPage == index
                      ? AppColors.darkGreen
                      : AppColors.pastelGreen,
                  borderRadius: BorderRadius.circular(4),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
