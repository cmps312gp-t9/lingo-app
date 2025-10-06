import 'package:flutter/material.dart';

class MatchScreen extends StatelessWidget {
  final String id;
  const MatchScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Match')),
      body: const Center(child: Text('Match pairs here')),
    );
  }
}