import 'package:flutter/material.dart';
import 'package:financeapp/features/shared/app_shell.dart';

class CommissionScreen extends StatelessWidget {
  const CommissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Commission',
      body: const Center(child: Text('Commission — Coming Soon')),
    );
  }
}
