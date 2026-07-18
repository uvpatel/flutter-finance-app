import 'package:flutter/material.dart';
import 'package:financeapp/features/shared/app_shell.dart';

class DocumentsScreen extends StatelessWidget {
  const DocumentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Documents',
      body: const Center(child: Text('Documents — Coming Soon')),
    );
  }
}
