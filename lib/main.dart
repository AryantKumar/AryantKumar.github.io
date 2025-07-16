import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/url_strategy.dart'; // ✅ Use Flutter's built-in support
import 'package:layout/layout.dart';
import 'package:aryant/injection.dart';
import 'package:aryant/presentation/utils/extensions/extensions.dart';

import 'firebase_options.dart';
import 'presentation/route/routes.dart';
import 'presentation/utils/custom_scroll_behaviour.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  Injection.setUp();
  usePathUrlStrategy(); // ✅ Replaces setPathUrlStrategy from url_strategy package
  runApp(const TucoYe());
}

class TucoYe extends StatelessWidget {
  const TucoYe({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: MaterialApp(
        title: 'Aryant! Portfolio',
        scrollBehavior: AppScrollBehavior(),
        debugShowCheckedModeBanner: false,
        theme: context.theme(),
        initialRoute: initialRoute,
        onGenerateRoute: RouteGen.generateRoute,
      ),
    );
  }

  String get initialRoute => Routes.home;
}
