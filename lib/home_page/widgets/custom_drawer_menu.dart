import 'package:flutter/material.dart';
import '../../models/module_model.dart';
import '../../theme/app_colors.dart';

class CustomDrawerMenu extends StatelessWidget {
  final List<ModuleModel> modulesData;
  final int currentIndex;
  final void Function(int index) onItemTap;
  final VoidCallback toggleMenu;
  final bool isOpen;
  final double slideOffset;
  final Color currentColor;

  const CustomDrawerMenu({
    super.key,
    required this.modulesData,
    required this.currentIndex,
    required this.onItemTap,
    required this.toggleMenu,
    required this.isOpen,
    required this.slideOffset,
    required this.currentColor,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(slideOffset, 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 250,
            height: double.infinity,
            color: AppColors.white,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 16),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: modulesData.length,
                    itemBuilder: (BuildContext context, int index) {
                      final ModuleModel model = modulesData[index];
                      final bool isCurrent = currentIndex == index;
                      final Color color = model.backgroundColor;

                      return GestureDetector(
                        onTap: () => onItemTap(index),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 4),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            color: isCurrent
                                ? AppColors.paleOrange.withValues(alpha: 0.1)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  model.menuName,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.darkGreen,
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

          // Кнопка-ручка с отдельной тенью
          Container(
            decoration: const BoxDecoration(

            ),
            child: GestureDetector(
              onTap: toggleMenu,
              child: Container(
                width: 40,
                height: 80,
                decoration:  BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: AppColors.middleDartText.withValues(alpha: 0.2),
                      blurRadius: 4,
                      offset: const Offset(3, 0),
                    ),
                  ],
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 7),
                    child: Icon(
                      isOpen ? Icons.close : Icons.menu,
                      color: currentColor,
                      size: 28,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}