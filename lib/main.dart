import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:trotapp_mobile/config/router/app_router.dart';
import 'package:trotapp_mobile/config/theme/app_theme.dart';

Future<void> main() async {
  runApp(const ProviderScope(child: TrotApp()));
}

class TrotApp extends StatelessWidget {
  const TrotApp({super.key});

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting();

    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
    );
  }
}
