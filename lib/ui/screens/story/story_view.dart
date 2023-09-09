import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class StoryView extends ConsumerWidget {
  const StoryView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Text(
          "Story",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
