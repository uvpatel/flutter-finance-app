import 'package:flutter/material.dart';
import 'package:financeapp/features/shared/app_shell.dart';

class CustomerListScreen extends StatelessWidget {
  const CustomerListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Customer List',
      body: const Center(child: Text('Customer List — Coming Soon')),
    );
  }
}
