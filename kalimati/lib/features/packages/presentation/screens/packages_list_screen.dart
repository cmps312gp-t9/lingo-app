import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PackagesListScreen extends StatelessWidget {
  const PackagesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Learning Packages')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Sample Package'),
            subtitle: const Text('Level: A1  •  EN'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.push('/packages/sample'),
          ),
        ],
      ),
    );
  }
}