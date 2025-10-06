import 'package:flutter/material.dart';

class FlashCardsScreen extends StatelessWidget {
  final String id;
  const FlashCardsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flash Cards')),
      body: const Center(child: Text('Flash Cards here')),
    );
  }
}