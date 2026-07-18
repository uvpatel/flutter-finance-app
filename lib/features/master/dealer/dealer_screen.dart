import 'package:flutter/material.dart';
import 'package:financeapp/features/shared/app_shell.dart';

class DealerScreen extends StatelessWidget {
  const DealerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Dealer',
      body: const Center(child: Text('Dealer — Coming Soon')),
    );
  }
}
