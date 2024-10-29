import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            height: 160,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSurface,
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
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
