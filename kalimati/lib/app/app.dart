import 'package:flutter/material.dart';
import 'router.dart';
import '../core/theme/theme.dart';

class KalimatiApp extends StatelessWidget {
  const KalimatiApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = buildRouter();
    return MaterialApp.router(
      title: 'Kalimati',
      theme: buildTheme(),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}