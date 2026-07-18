import 'package:flutter/material.dart';
import 'package:financeapp/features/shared/app_shell.dart';

class AddCustomerScreen extends StatelessWidget {
  const AddCustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Add Customer',
      body: const Center(child: Text('Add Customer — Coming Soon')),
    );
  }
}
