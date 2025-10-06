import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PackageDetailsScreen extends StatelessWidget {
  final String packageId;
  const PackageDetailsScreen({super.key, required this.packageId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Package: $packageId')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Title: (placeholder)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Description: ...'),
            const Spacer(),
            Wrap(
              spacing: 12,
              children: [
                FilledButton(onPressed: () => context.push('/packages/$packageId/flashcards'), child: const Text('Flash Cards')),
                FilledButton(onPressed: () => context.push('/packages/$packageId/unscramble'), child: const Text('Unscramble')),
                FilledButton(onPressed: () => context.push('/packages/$packageId/match'), child: const Text('Match')),
              ],
            )
          ],
        ),
      ),
    );
  }
}