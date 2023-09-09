import 'package:edemekong/ui/screens/tab/components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class WebTab extends ConsumerWidget {
  final StatefulNavigationShell shell;
  const WebTab({super.key, required this.shell});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      child: Scaffold(
        body: Column(
          children: [
            EdAppBar(shell: shell),
            Expanded(child: ClipRRect(child: shell)),
          ],
        ),
      ),
    );
  }
}
