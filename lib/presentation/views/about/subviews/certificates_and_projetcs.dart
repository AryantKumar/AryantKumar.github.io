import 'package:flutter/material.dart';
import 'package:aryant/data/model/activity.dart';
import 'package:aryant/presentation/utils/extensions/extensions.dart';
import 'package:aryant/presentation/widgets/widgets.dart';

import '../../../configs/configs.dart';

class CertificatesAndProjetcs extends StatelessWidget {
  const CertificatesAndProjetcs({
    super.key,
    required this.stickController,
    required this.textController,
    required this.infoController,
  });

  final AnimationController stickController;
  final AnimationController textController;
  final AnimationController infoController;

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      <Widget>[
        AnimatedHorizontalStick(controller: stickController),
        horizontalSpaceMedium,
        AnimatedTextSlideBoxTransition(
          text: ksCertificateAndProjetcs.toUpperCase(),
          controller: textController,
          coverColor: kPrimary,
          textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
      ].addRow(),
      verticalSpaceMassive,
      ...ksActivityList
          .map((activity) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: FadeTransition(
          opacity: infoController,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.1),
              end: Offset.zero,
            ).animate(CurvedAnimation(
              parent: infoController,
              curve: Curves.easeOut,
            )),
            child: ActivityCard(activity: activity),
          ),
        ),
      ))
          .toList(),
    ].addColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key, required this.activity});

  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: kBlack12,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: <Widget>[
        if (activity.title != null) ...[
          Text(
            activity.title!,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          verticalSpaceSmall,
        ],
        <Widget>[
          Icon(activity.icon, size: context.adaptive(s18, s24)),
          horizontalSpaceMedium,
          Expanded(
            child: Text(
              activity.name,
              maxLines: 3,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ].addRow(),
        verticalSpaceSmall,
        if (activity.link != null) ...[
          const Divider(height: 24),
          InkWell(
            onTap: () => activity.link!.launchWebsite(),
            child: <Widget>[
              const Icon(kiLink, size: 18),
              horizontalSpaceSmall,
              Text(
                activity.link!,
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dotted,
                  color: Colors.blue,
                ),
              ),
            ].addRow(),
          ),
        ],
        verticalSpaceMedium,
        Text(
          activity.details,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ].addColumn(crossAxisAlignment: CrossAxisAlignment.start),
    );
  }
}
