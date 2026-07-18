import 'package:flutter/material.dart';
import 'package:financeapp/features/shared/app_shell.dart';

class AddFilesScreen extends StatelessWidget {
  const AddFilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Add Files',
      body: const Center(child: Text('Add Files — Coming Soon')),
    );
  }
}
