import 'package:flutter/material.dart';

class EditorHomeScreen extends StatelessWidget {
  const EditorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Learning Package Editor')),
      body: Center(child: Text('Editor home (create/edit/publish)')),
    );
  }
}