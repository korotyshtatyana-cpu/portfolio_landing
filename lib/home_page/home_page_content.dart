import 'package:flutter/material.dart';
import 'package:portfolio/home_page/widgets/module_layout.dart';
import 'package:portfolio/models/module_model.dart';
import '../data/constants.dart';
import '../data/modules_data.dart';
import '../theme/app_images.dart';

import '../models/module_orientation_enum.dart';
import '../theme/app_colors.dart';
import 'widgets/module_content.dart';
import 'widgets/welcome_module.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent>
    with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  int _currentModuleIndex = 0;
  bool _isMenuOpen = false;
  late AnimationController _animationController;
  late Animation<double> _slideAnimation;

  void _scrollToModule(int index) {
    if (_scrollController.hasClients) {
      final double position = index * moduleHeight;

      _scrollController.animateTo(
        position,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }

    _toggleMenu();
  }

  void _toggleMenu() {
    if (_isMenuOpen) {
      _animationController.reverse();
    } else {
      _animationController.forward();
    }

    setState(() {
      _isMenuOpen = !_isMenuOpen;
    });
  }

  void _onScroll() {
    if (_scrollController.hasClients) {
      final double offset = _scrollController.offset;
      final int newIndex = (offset / moduleHeight).round().clamp(
        0,
        modulesData.length - 1,
      );

      if (newIndex != _currentModuleIndex) {
        setState(() {
          _currentModuleIndex = newIndex;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);

    _animationController =
        AnimationController(
          vsync: this,
          duration: const Duration(milliseconds: 350),
        )..addListener(() {
          setState(() {});
        });

    _slideAnimation = Tween<double>(begin: -245, end: 0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );

    _animationController.value = 0.0;
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color currentColor = modulesData[_currentModuleIndex].backgroundColor;
    final double slideOffset = _slideAnimation.value;

    return Scaffold(
      body: Stack(
        children: [
          ListView(
            controller: _scrollController,
            children: [
              WelcomeModule(
                backgroundColor: modulesData.first.backgroundColor,
                backgroundImage: modulesData.first.backgroundImage,
                textColor: modulesData.first.textColor,
                titleColor: modulesData.first.titleColor,
              ),
              ...modulesData.getRange(1, modulesData.length - 1).map((
                ModuleModel model,
              ) {
                return ModuleLayout(
                  backgroundColor: model.backgroundColor,
                  backgroundImage: model.backgroundImage,
                  moduleOrientationEnum: model.moduleOrientationEnum,
                  child: ModuleContent(
                    titleColor: model.titleColor,
                    mainColor: model.textColor,
                    moduleOrientationEnum: model.moduleOrientationEnum,
                    moreFunction: model.moreFunction,
                    downloadFunction: model.downloadFunction,
                    title: model.title,
                    projectName: model.projectName,
                  ),
                );
              }),
            ],
          ),

          if (_isMenuOpen)
            Positioned.fill(
              child: GestureDetector(
                onTap: _toggleMenu,
                child: Container(color: Colors.black.withOpacity(0.3)),
              ),
            ),

          Transform.translate(
            offset: Offset(slideOffset, 0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Меню
                Container(
                  width: 250,
                  height: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      Expanded(
                        child: ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          itemCount: modulesData.length,
                          itemBuilder: (context, index) {
                            final model = modulesData[index];
                            final isCurrent = _currentModuleIndex == index;
                            final color = model.backgroundColor;

                            return GestureDetector(
                              onTap: () => _scrollToModule(index),
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 4),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 12,
                                ),
                                decoration: BoxDecoration(
                                  color: isCurrent
                                      ? color.withOpacity(0.15)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        model.menuName,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: AppColors.basicText,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: _toggleMenu,
                  child: Container(
                    width: 40,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: Icon(
                          _isMenuOpen ? Icons.close : Icons.menu,
                          color: currentColor,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
