// ignore_for_file: unused_local_variable

import 'package:clean_e_commerce_app/core/routes/routes.dart';
import 'package:clean_e_commerce_app/core/themes/appcolor.dart';
import 'package:clean_e_commerce_app/core/themes/appthemes.dart';
import 'package:clean_e_commerce_app/core/utils/appsizing.dart';
import 'package:clean_e_commerce_app/features/product/providers/product_provider.dart';
import 'package:clean_e_commerce_app/features/product/screen/product_details_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GridveiwProductDesign extends ConsumerWidget {
  const GridveiwProductDesign({
    super.key,
  });

  // final void Function()? onTap;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(themeProvider).isDarkMode;
    final productsData = ref.watch(productDataNotifierProvider);
    return Expanded(
      child: GridView.builder(
          itemCount: productsData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: AppSizing.isMobile(context)
                ? 10
                : 20, // Spacing between columns
            mainAxisSpacing: 10.0, // Spacing between rows
            childAspectRatio: 0.76,
          ),
          itemBuilder: (context, index) {
            final products = productsData[index];
            return InkWell(
              highlightColor: Colors.red,
              onTap: () {
                Navigator.push(
                    context,
                    routes(ProductDetailsScreen(
                      productitems: products,
                      String: null,
                    )));
              },
              child: Column(
                children: [
                  // Image.network(products.image),
                  // Text(products.title)
                  Container(
                    decoration: const BoxDecoration(),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            color: isDarkMode
                                ? const Color.fromARGB(255, 225, 221, 208)
                                : AppColors.bgRedMainColor,
                          ),
                          child: Image.network(
                            products.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: AppSizing.isMobile(context)
                              ? MediaQuery.sizeOf(context).width
                              : MediaQuery.sizeOf(context).width * 0.6,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 241, 244, 241),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  products.title,
                                  style: dynamicTextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(products.price.toString()),
                                    Text(products.rating.toString()),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
