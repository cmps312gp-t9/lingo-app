import 'package:flutter/material.dart';

class UnscrambleScreen extends StatelessWidget {
  final String id;
  const UnscrambleScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Unscramble')),
      body: const Center(child: Text('Unscramble here')),
    );
  }
}