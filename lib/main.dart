import 'package:flutter/material.dart';

import 'App/SplashImage.dart';
import 'App/pages/pages.dart';
import 'theme/rackleTheme.dart';

void main() => runApp(SplashImage(
  theme: rackleTheme,
  after: App(
    pageOfIndex0: MapPage(),
    pageOfIndex1: PinsSummaryPage(),
    pageOfIndex2: NotificationsPage(),
    pageOfIndex3: ConfigurationPage(),
  ),
));
