// ignore_for_file: depend_on_referenced_packages

import 'package:edemekong/data/services/navigation_service.dart';
import 'package:edemekong/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  usePathUrlStrategy();
  runApp(const ProviderScope(child: RootApp()));
}

class RootApp extends ConsumerWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.read(appThemeProvider);
    final navigationService = ref.read(navigationProvider);

    return ListenableBuilder(
      listenable: Listenable.merge([appTheme.themeDataNotifier]),
      builder: (context, _) {
        final themeData = appTheme.themeDataNotifier.value;

        return MaterialApp.router(
          title: "PAUL.flutterfariy",
          theme: themeData,
          routerConfig: navigationService.router,
        );
      },
    );
  }
}
