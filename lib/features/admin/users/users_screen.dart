import 'package:flutter/material.dart';
import 'package:financeapp/features/shared/app_shell.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Users',
      body: const Center(child: Text('Users — Coming Soon')),
    );
  }
}
