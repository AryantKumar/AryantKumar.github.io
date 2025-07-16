import 'package:flutter/material.dart';
import 'package:aryant/presentation/configs/constant_sizes.dart';

enum SlidePosition { left, right, bottom, top }

class SlideRouteTransition extends PageRouteBuilder {
  final Widget enterWidget;
  final SlidePosition position;

  SlideRouteTransition({
    required this.enterWidget,
    this.position = SlidePosition.top,
    super.settings,
  }) : super(
    transitionDuration:
    position == SlidePosition.top ? duration500 : duration2000,
    reverseTransitionDuration:
    position == SlidePosition.top ? duration500 : duration2000,
    pageBuilder: (context, animation, secondaryAnimation) => enterWidget,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      Offset offset;
      switch (position) {
        case SlidePosition.top:
          offset = const Offset(0.0, -1.0);
          break;
        case SlidePosition.bottom:
          offset = const Offset(0.0, 1.0);
          break;
        case SlidePosition.left:
          offset = const Offset(-1.0, 0.0);
          break;
        case SlidePosition.right:
        default:
          offset = const Offset(1.0, 0.0);
          break;
      }

      final slideIn = Tween<Offset>(
        begin: offset,
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: animation,
          curve: Curves.easeInOut,
        ),
      );

      final zoomIn = Tween<double>(
        begin: 0.9,
        end: 1.0,
      ).animate(
        CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutBack,
        ),
      );

      final zoomOut = Tween<double>(
        begin: 1.0,
        end: 0.95,
      ).animate(
        CurvedAnimation(
          parent: secondaryAnimation,
          curve: Curves.easeInOut,
        ),
      );

      return Stack(
        children: [
          ScaleTransition(
            scale: zoomOut,
            child: FadeTransition(
              opacity: ReverseAnimation(animation),
              child: child,
            ),
          ),
          SlideTransition(
            position: slideIn,
            child: ScaleTransition(
              scale: zoomIn,
              child: child,
            ),
          ),
        ],
      );
    },
  );
}
