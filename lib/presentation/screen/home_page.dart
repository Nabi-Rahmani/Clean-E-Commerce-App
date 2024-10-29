import 'package:clean_e_commerce_app/core/themes/appcolor.dart';
import 'package:clean_e_commerce_app/core/themes/appthemes.dart';
import 'package:clean_e_commerce_app/core/utils/appsizing.dart';

import 'package:clean_e_commerce_app/features/product/widgets/gridveiw_product_desing.dart';
import 'package:clean_e_commerce_app/shared/custom_dark_light_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(themeProvider).isDarkMode;
    // final productList = ref.watch(productDataNotifierProvider);
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: isDarkMode
                      ? const Color.fromARGB(255, 225, 221, 208)
                      : AppColors.bgRedMainColor,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            height: 160,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(30),
                ),
                color: isDarkMode
                    ? const Color.fromARGB(255, 225, 221, 208)
                    : AppColors.bgRedMainColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Type here...',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                                icon: Icon(Icons.search, color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const DarkAndLightModeButton(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            top: 160,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                ),
                color: Theme.of(context).colorScheme.surface,
              ),
              child: Padding(
                padding: EdgeInsets.all(AppSizing.isMobile(context) ? 10 : 30),
                child: const Column(
                  children: [
                    GridveiwProductDesign(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
