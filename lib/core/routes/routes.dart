import 'package:flutter/cupertino.dart';

// Route routes(Widget page) {
//   return PageRouteBuilder(
//     pageBuilder: (BuildContext context, Animation<double> animation,
//         Animation<double> secondaryAnimation) {
//       return page;
//     },
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       const begin = Offset(0.0, 0.1); // Start from bottom (y = 1.0)
//       const end = Offset.zero; // End at top (y = 0.0)
//       final tween = Tween(begin: begin, end: end);
//       final offsetAnimation = animation.drive(tween);

//       return SlideTransition(
//         position: offsetAnimation,
//         child: child,
//       );
//     },
//   );
// }
Route routes(Widget page) {
  return CupertinoPageRoute(
    builder: (context) => page,
    // You can still customize the transition if needed
    fullscreenDialog:
        false, // Use this to create a fullscreen modal transition if required
    // Set a custom transition here if desired
  );
}

// Route routes(Widget page) {
//   return PageRouteBuilder(
//     pageBuilder: (BuildContext context, Animation<double> animation,
//         Animation<double> secondaryAnimation) {
//       return page;
//     },
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       // Start from just off the bottom of the screen (like a popup)
//       const begin = Offset(0.0, 1.0);
//       const end = Offset(0.0, 0.0); // End in place (popup on the screen)
//       final tween = Tween(begin: begin, end: end);
//       final offsetAnimation = animation.drive(tween);

//       // For adding a fade effect (optional)
//       final opacityAnimation = Tween<double>(begin: 0.0, end: 1.0)
//           .animate(CurvedAnimation(parent: animation, curve: Curves.easeIn));

//       return SlideTransition(
//         position: offsetAnimation,
//         child: FadeTransition(
//           opacity: opacityAnimation,
//           child: child,
//         ),
//       );
//     },
//   );
// }

class AppRouter {
  static navigate(BuildContext context, Widget page) async {
    return Navigator.of(context).push(_createRoute(page));
  }

  static Route _createRoute(Widget page) {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 0),
      reverseTransitionDuration: const Duration(milliseconds: 600),
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}
