import 'package:flutter/material.dart';
import 'package:financeapp/features/shared/app_shell.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Payment',
      body: const Center(child: Text('Payment — Coming Soon')),
    );
  }
}
