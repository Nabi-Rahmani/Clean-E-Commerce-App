import 'package:clean_e_commerce_app/core/themes/appcolor.dart';
import 'package:clean_e_commerce_app/core/themes/appthemes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DarkAndLightModeButton extends ConsumerWidget {
  const DarkAndLightModeButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeModel = ref.watch(themeProvider);
    return IconButton(
      icon: AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return RotationTransition(
            turns: child.key == const ValueKey('light')
                ? Tween<double>(begin: 1.0, end: 0.75).animate(animation)
                : Tween<double>(begin: 0.75, end: 1.0).animate(animation),
            child: FadeTransition(opacity: animation, child: child),
          );
        },
        child: themeModel.isDarkMode
            ? Icon(
                Icons.dark_mode,
                key: const ValueKey('dark'),
                color: themeModel.isDarkMode
                    ? AppColors.textWhite
                    : AppColors.black87,
              )
            : Icon(
                Icons.light_mode,
                key: const ValueKey('light'),
                color: themeModel.isDarkMode
                    ? AppColors.textWhite
                    : AppColors.textWhite,
              ),
      ),
      onPressed: () {
        ref.read(themeProvider).toggleTheme();
      },
    );
  }
}
