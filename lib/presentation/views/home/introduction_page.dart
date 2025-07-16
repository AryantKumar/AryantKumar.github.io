import 'package:flutter/material.dart';
import 'package:aryant/presentation/utils/extensions/extensions.dart';
import 'package:aryant/presentation/widgets/widgets.dart';

import '../../configs/configs.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key, required this.onTapSeeMyWorks})
      : super(key: key);
  final VoidCallback onTapSeeMyWorks;

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _controller2;
  late Animation<double> xShapeTween1;
  late Animation<double> xShapeTween2;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: duration3000,
    )..forward();
    _controller2 = AnimationController(
      vsync: this,
      duration: duration3000,
    );
    xShapeTween1 = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn),
    );
    xShapeTween2 = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller2, curve: Curves.fastOutSlowIn),
    );
    Future.delayed(duration500, () {
      _controller2.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle? titleTextStyle = context.adaptive(
      Theme.of(context).textTheme.titleMedium,
      Theme.of(context).textTheme.headlineSmall,
      md: Theme.of(context).textTheme.titleLarge,
    );
    double xSize = s400;
    bool codeVisibility = context.adaptive(false, true, md: true);

    return <Widget>[
      <Widget>[
        ScaleTransition(
          scale: xShapeTween1,
          child: CustomPaint(
            size: Size(xSize, xSize),
            painter: XShapePainter(color: kSecondary, strokeWidth: 12),
          ),
        ),
        ScaleTransition(
          scale: xShapeTween2,
          child: CustomPaint(
            size: Size(xSize, xSize),
            painter: XShapePainter(color: kWhite, strokeWidth: 10, shadowColor: kSecondary),
          ),
        ),
      ].addStack().addSizedBox(
        width: xSize,
        height: xSize,
      ),
      <Widget>[
        <Widget>[
          AnimatedTextSlideBoxTransition(
            controller: _controller,
            coverColor: Theme.of(context).scaffoldBackgroundColor,
            text: ksAndroidDeveloperAnd,
            textStyle: titleTextStyle,
          ),
          AnimatedTextSlideBoxTransition(
            controller: _controller,
            coverColor: Theme.of(context).scaffoldBackgroundColor,
            text: ksiOSDevinTraining,
            textStyle: titleTextStyle,
          ),
          verticalSpaceMassive,
          AnimatedTextSlideBoxTransition(
            controller: _controller,
            text: ksIntro,
            coverColor: Theme.of(context).scaffoldBackgroundColor,
            textStyle: Theme.of(context).textTheme.bodyLarge,
            maxLines: 10,
          ),
          verticalSpaceMassive,
          CustomButton(
            label: ksSeeMyWork,
            onPressed: widget.onTapSeeMyWorks,
            icon: kiArrowForward,
          ),
          context.percentSizedBox(pHeight: context.adaptive(s12, s10)),
          <Widget>[
            AnimatedHoverLink(
              label: ksGithub,
              controller: _controller,
            ).addInkWell(
              onTap: ksGithubLink.launchWebsite,
            ),
            const Text(ksSlash).addCenter().addSizedBox(width: s50),
            AnimatedHoverLink(
              label: ksLinkedIn,
              controller: _controller,
            ).addInkWell(
              onTap: ksLinkedInLink.launchWebsite,
            ),
            const Text(ksSlash).addCenter().addSizedBox(width: s50),
          ].addRow(),
        ].addColumn(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        Visibility(visible: codeVisibility, child: const CodeBlock()),
      ].addRow(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    ]
        .addStack(
      alignment: Alignment.center,
    )
        .addPadding(
      edgeInsets: context.symmetricPercentPadding(
        hPercent: context.adaptive(s2, s10, md: s4),
      ),
    )
        .addSizedBox(
      height: context.screenHeight -
          context.appBarTheme().toolbarHeight!,
      width: context.screenWidth,
    );
  }
}

/// CustomPainter to draw an X shape
class XShapePainter extends CustomPainter {
  final Color color;
  final Color? shadowColor;
  final double strokeWidth;

  XShapePainter({
    required this.color,
    this.shadowColor,
    this.strokeWidth = 8,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    if (shadowColor != null) {
      paint.maskFilter = MaskFilter.blur(BlurStyle.normal, 10);
      canvas.drawLine(Offset(0, 0), Offset(size.width, size.height),
          paint..color = shadowColor!);
      canvas.drawLine(Offset(size.width, 0), Offset(0, size.height),
          paint..color = shadowColor!);
    }

    // Draw main X lines
    paint.maskFilter = null;
    paint.color = color;
    canvas.drawLine(Offset(0, 0), Offset(size.width, size.height), paint);
    canvas.drawLine(Offset(size.width, 0), Offset(0, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
