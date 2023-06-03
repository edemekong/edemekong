import 'package:edemekong/ui/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Paul Jeremiah",
      home: HomeViewWidget(),
    );
  }
}
