import 'package:flutter/material.dart';
import 'package:financeapp/features/shared/app_shell.dart';

class CompanyScreen extends StatelessWidget {
  const CompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Company',
      body: const Center(child: Text('Company — Coming Soon')),
    );
  }
}
