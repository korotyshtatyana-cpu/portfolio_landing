import 'package:flutter/material.dart';

import '../data/constants.dart';
import '../data/modules_data.dart';
import '../models/module_model.dart';
import '../theme/app_colors.dart';
import 'widgets/custom_drawer_menu.dart';
import 'widgets/module_content.dart';
import 'widgets/module_layout.dart';
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

    _slideAnimation = Tween<double>(begin: -250, end: 0).animate(
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
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: <Widget>[
          ListView(
            controller: _scrollController,
            children: <Widget>[
              WelcomeModule(
                backgroundColor: modulesData.first.backgroundColor,
                backgroundImage: modulesData.first.backgroundImage,
                textColor: modulesData.first.textColor,
                accentColor: modulesData.first.accentColor,
              ),
              ...modulesData.getRange(1, modulesData.length).map((
                ModuleModel model,
              ) {
                return ModuleLayout(
                  backgroundColor: model.backgroundColor,
                  backgroundImage: model.backgroundImage,
                  moduleOrientationEnum: model.moduleOrientationEnum,
                  child: ModuleContent(
                    textColor: model.textColor,
                    accentColor: model.accentColor,
                    moduleOrientationEnum: model.moduleOrientationEnum,
                    moduleDetailsModel: model.moduleDetailsModel,
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
                child: Container(color: Colors.black.withValues(alpha: 0.3)),
              ),
            ),

          CustomDrawerMenu(
            modulesData: modulesData,
            currentIndex: _currentModuleIndex,
            onItemTap: _scrollToModule,
            toggleMenu: _toggleMenu,
            isOpen: _isMenuOpen,
            slideOffset: _slideAnimation.value,
            currentColor: modulesData[_currentModuleIndex].backgroundColor,
          ),
        ],
      ),
    );
  }
}
