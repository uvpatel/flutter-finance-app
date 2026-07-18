import 'package:flutter/material.dart';
import 'package:financeapp/features/shared/app_shell.dart';

class ExpenseOutScreen extends StatelessWidget {
  const ExpenseOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Expense Out',
      body: const Center(child: Text('Expense Out — Coming Soon')),
    );
  }
}
