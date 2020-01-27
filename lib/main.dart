import 'package:flutter/material.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'App/SplashImage.dart';
import 'App/pages/pages.dart';
import 'theme/rackleTheme.dart';

Future main() async {
  await DotEnv().load('.env');

  runApp(
    SplashImage(
      theme: rackleTheme,
      after: App(
        pageOfIndex0: MapPage(),
        pageOfIndex1: PinsSummaryPage(),
        pageOfIndex2: NotificationsPage(),
        pageOfIndex3: ConfigurationPage(),
      ),
    ),
  );
}
