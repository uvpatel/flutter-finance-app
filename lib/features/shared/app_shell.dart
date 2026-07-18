import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:financeapp/core/router/app_routes.dart';
import 'package:financeapp/core/router/route_guards.dart';

/// Reusable app shell with sidebar navigation drawer used by all feature screens.
class AppShell extends StatelessWidget {
  final String title;
  final Widget body;

  const AppShell({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FA),
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color(0xFF0D1B2A),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: _AppDrawer(),
      body: body,
    );
  }
}

class _AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;

    return Drawer(
      backgroundColor: const Color(0xFF0D1B2A),
      child: Column(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFF1C2F45)),
            child: Row(
              children: [
                Icon(Icons.account_balance, color: Color(0xFF4FC3F7), size: 36),
                SizedBox(width: 12),
                Text(
                  'Finance App',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _navItem(context, Icons.dashboard, 'Dashboard', AppRoutes.dashboard, location),
                _sectionHeader('Customers'),
                _navItem(context, Icons.people, 'Customer List', AppRoutes.customerList, location),
                _navItem(context, Icons.person_add, 'Add Customer', AppRoutes.addCustomer, location),
                _navItem(context, Icons.attach_file, 'Add Files', AppRoutes.addFiles, location),
                _navItem(context, Icons.folder_open, 'Documents', AppRoutes.documents, location),
                _sectionHeader('Master'),
                _navItem(context, Icons.business, 'Company', AppRoutes.company, location),
                _navItem(context, Icons.directions_car, 'Dealer', AppRoutes.dealer, location),
                _navItem(context, Icons.handshake, 'Broker', AppRoutes.broker, location),
                _navItem(context, Icons.account_balance_wallet, 'Finance Company', AppRoutes.financeCompany, location),
                _navItem(context, Icons.savings, 'Own Bank', AppRoutes.ownBank, location),
                _navItem(context, Icons.health_and_safety, 'Insurance', AppRoutes.insurance, location),
                _navItem(context, Icons.receipt_long, 'Expenses', AppRoutes.expenses, location),
                _sectionHeader('Payments'),
                _navItem(context, Icons.payment, 'Payment', AppRoutes.payment, location),
                _navItem(context, Icons.percent, 'Commission', AppRoutes.commission, location),
                _sectionHeader('Reports'),
                _navItem(context, Icons.directions, 'RTO Payment', AppRoutes.rtoPayment, location),
                _navItem(context, Icons.shield, 'Insurance Payment', AppRoutes.insurancePayment, location),
                _navItem(context, Icons.money_off, 'Expense Out', AppRoutes.expenseOut, location),
                _navItem(context, Icons.account_balance, 'Advance Dealer', AppRoutes.advanceDealer, location),
                _sectionHeader('File Reports'),
                _navItem(context, Icons.bar_chart, 'Dashboard', AppRoutes.fileReportsDashboard, location),
                _navItem(context, Icons.folder_copy, 'Manage Files', AppRoutes.manageFiles, location),
                _sectionHeader('Admin'),
                _navItem(context, Icons.manage_accounts, 'Users', AppRoutes.users, location),
              ],
            ),
          ),
          const Divider(color: Color(0xFF2A3F55)),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.redAccent),
            title: const Text('Logout', style: TextStyle(color: Colors.redAccent)),
            onTap: () async {
              await RouteGuards.clearAuthToken();
              if (context.mounted) context.go(AppRoutes.login);
            },
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _sectionHeader(String label) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
      child: Text(
        label.toUpperCase(),
        style: const TextStyle(
          color: Color(0xFF4FC3F7),
          fontSize: 11,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  Widget _navItem(BuildContext context, IconData icon, String label,
      String route, String currentLocation) {
    final isActive = currentLocation == route;
    return ListTile(
      selected: isActive,
      selectedTileColor: const Color(0xFF1C2F45),
      leading: Icon(icon,
          color: isActive ? const Color(0xFF4FC3F7) : Colors.white60,
          size: 20),
      title: Text(
        label,
        style: TextStyle(
          color: isActive ? const Color(0xFF4FC3F7) : Colors.white70,
          fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
          fontSize: 14,
        ),
      ),
      onTap: () {
        Navigator.pop(context);
        context.go(route);
      },
    );
  }
}
