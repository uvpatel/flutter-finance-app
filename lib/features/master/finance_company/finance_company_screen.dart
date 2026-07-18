import 'package:flutter/material.dart';
import 'package:financeapp/features/shared/app_shell.dart';

class FinanceCompanyScreen extends StatelessWidget {
  const FinanceCompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Finance Company',
      body: const Center(child: Text('Finance Company — Coming Soon')),
    );
  }
}
