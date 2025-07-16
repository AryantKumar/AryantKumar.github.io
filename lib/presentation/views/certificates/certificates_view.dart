import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:aryant/presentation/utils/extensions/extensions.dart';
import 'package:aryant/presentation/views/wrapper.dart';
import 'package:aryant/presentation/widgets/animated_horizontal_stick.dart';
import 'package:aryant/presentation/widgets/animated_text_slide_box_transition.dart';

import '../../configs/configs.dart';
import 'widgets/certificate_card.dart';

class CertificatesView extends StatefulWidget {
  const CertificatesView({super.key});

  @override
  State<CertificatesView> createState() => _CertificatesViewState();
}

class _CertificatesViewState extends State<CertificatesView>
    with TickerProviderStateMixin {
  late AnimationController _stickController;
  final List<AnimationController> _controller = [];
  late AnimationController _textController;

  @override
  void initState() {
    super.initState();
    _stickController = AnimationController(vsync: this, duration: duration500)
      ..forward()
      ..addStatusListener(stickControllerListener);

    _textController = AnimationController(vsync: this, duration: duration1000);

    for (int i = 0; i < ksCertificateList.length; i++) {
      _controller.add(AnimationController(vsync: this, duration: duration500));
    }
  }

  void stickControllerListener(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _textController.forward();
    }
  }

  @override
  void dispose() {
    for (var controller in _controller) {
      controller.dispose();
    }
    _stickController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      page: <Widget>[
        // Header Section
        <Widget>[
          AnimatedHorizontalStick(controller: _stickController),
          horizontalSpaceMedium,
          AnimatedTextSlideBoxTransition(
            controller: _textController,
            text: ksCertificates,
            textStyle: context.adaptive(
              Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              Theme.of(context).textTheme.titleMedium,
            ),
            coverColor: kPrimary,
          ),
        ].addRow(),

        verticalSpaceMassive,

        // Certificate Grid
        GridView.custom(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: context.adaptive(1, 2),
            childAspectRatio: 16 / 9,
            mainAxisSpacing: s20,
            crossAxisSpacing: s20,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            childCount: ksCertificateList.length,
                (context, index) => AnimationConfiguration.staggeredGrid(
              position: index,
              columnCount: context.adaptive(1, 2),
              duration: const Duration(milliseconds: 1500), // FIXED HERE
              child: SlideAnimation(
                verticalOffset: s50,
                curve: Curves.easeOutCubic,
                child: FadeInAnimation(
                  child: Card( // FIXED HERE
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: CertificateCard(
                      key: ValueKey(index.toString()),
                      animation: _controller[index],
                      certificate: ksCertificateList[index],
                      onHover: (isHovered) {
                        if (isHovered) {
                          _controller[index].forward();
                        } else if (!_controller[index].isDismissed) {
                          _controller[index].reverse();
                        }
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

        verticalSpaceLarge,
      ]
          .addColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
      )
          .addPadding(
        edgeInsets: context.symmetricPercentPadding(
          hPercent: context.adaptive(s10, s8),
          vPercent: context.adaptive(s12, s10),
        ),
      )
          .addScrollView(
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
