import 'package:flutter/material.dart';
import 'package:financeapp/features/shared/app_shell.dart';

class OwnBankScreen extends StatelessWidget {
  const OwnBankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Own Bank',
      body: const Center(child: Text('Own Bank — Coming Soon')),
    );
  }
}
