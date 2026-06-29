import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';

class PresentationMode extends StatefulWidget {
  final List<String> images;

  // final double height;
  // final bool showIndicators;
  // final Duration autoPlayDuration;

  const PresentationMode({
    super.key,
    required this.images,
    // this.height = 400,
    // this.showIndicators = true,
    // this.autoPlayDuration = const Duration(seconds: 3),
  });

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

    // // ✅ Автопрокрутка
    // if (widget.autoPlayDuration.inSeconds > 0) {
    //   Future.delayed(widget.autoPlayDuration, _autoPlay);
    // }
  }

  // void _autoPlay() {
  //   if (_pageController.hasClients) {
  //     final int nextPage = (_currentPage + 1) % widget.pages.length;
  //     _pageController.animateToPage(
  //       nextPage,
  //       duration: const Duration(milliseconds: 500),
  //       curve: Curves.easeInOut,
  //     );
  //     Future.delayed(widget.autoPlayDuration, _autoPlay);
  //   }
  // }

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
