import 'package:flutter/material.dart';
import 'package:financeapp/features/shared/app_shell.dart';

class ExpensesScreen extends StatelessWidget {
  const ExpensesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Expenses',
      body: const Center(child: Text('Expenses — Coming Soon')),
    );
  }
}
