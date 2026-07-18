import 'package:flutter/material.dart';
import 'package:financeapp/features/shared/app_shell.dart';

class BrokerScreen extends StatelessWidget {
  const BrokerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Broker',
      body: const Center(child: Text('Broker — Coming Soon')),
    );
  }
}
