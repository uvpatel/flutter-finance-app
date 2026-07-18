import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:financeapp/core/router/app_routes.dart';
import 'package:financeapp/features/shared/app_shell.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Dashboard',
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Overview',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _statCard('Total Customers', '0', Icons.people, const Color(0xFF4FC3F7)),
                _statCard('Payments Due', '₹0', Icons.payment, const Color(0xFF81C784)),
                _statCard('Active Files', '0', Icons.folder_open, const Color(0xFFFFB74D)),
                _statCard('Commission', '₹0', Icons.percent, const Color(0xFFBA68C8)),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Quick Actions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _quickAction(context, 'Add Customer', Icons.person_add, AppRoutes.addCustomer),
                _quickAction(context, 'Add Files', Icons.attach_file, AppRoutes.addFiles),
                _quickAction(context, 'New Payment', Icons.payment, AppRoutes.payment),
                _quickAction(context, 'Reports', Icons.bar_chart, AppRoutes.fileReportsDashboard),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _statCard(String label, String value, IconData icon, Color color) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 36),
            const SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: color),
            ),
            const SizedBox(height: 4),
            Text(label,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ),
    );
  }

  Widget _quickAction(
      BuildContext context, String label, IconData icon, String route) {
    return ActionChip(
      avatar: Icon(icon, size: 18, color: const Color(0xFF0D1B2A)),
      label: Text(label),
      backgroundColor: const Color(0xFF4FC3F7),
      labelStyle: const TextStyle(
          color: Color(0xFF0D1B2A), fontWeight: FontWeight.w600),
      onPressed: () => context.go(route),
    );
  }
}
