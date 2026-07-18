import 'package:flutter/material.dart';
import 'package:financeapp/features/shared/app_shell.dart';

class InsuranceScreen extends StatelessWidget {
  const InsuranceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Insurance',
      body: const Center(child: Text('Insurance — Coming Soon')),
    );
  }
}
