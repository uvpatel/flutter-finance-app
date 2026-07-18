import 'package:go_router/go_router.dart';
import 'package:financeapp/core/router/app_routes.dart';
import 'package:financeapp/core/router/route_guards.dart';

// Auth
import 'package:financeapp/features/auth/login/login_screen.dart';

// Dashboard
import 'package:financeapp/features/dashboard/dashboard_screen.dart';

// Customers
import 'package:financeapp/features/customers/list/customer_list_screen.dart';
import 'package:financeapp/features/customers/add_customer/add_customer_screen.dart';
import 'package:financeapp/features/customers/add_files/add_files_screen.dart';
import 'package:financeapp/features/customers/documents/documents_screen.dart';

// Master
import 'package:financeapp/features/master/company/company_screen.dart';
import 'package:financeapp/features/master/dealer/dealer_screen.dart';
import 'package:financeapp/features/master/broker/broker_screen.dart';
import 'package:financeapp/features/master/finance_company/finance_company_screen.dart';
import 'package:financeapp/features/master/own_bank/own_bank_screen.dart';
import 'package:financeapp/features/master/insurance/insurance_screen.dart';
import 'package:financeapp/features/master/expenses/expenses_screen.dart';

// Payments
import 'package:financeapp/features/payments/payment/payment_screen.dart';
import 'package:financeapp/features/payments/commission/commission_screen.dart';

// Reports
import 'package:financeapp/features/reports/rto_payment/rto_payment_screen.dart';
import 'package:financeapp/features/reports/insurance_payment/insurance_payment_screen.dart';
import 'package:financeapp/features/reports/expense_out/expense_out_screen.dart';
import 'package:financeapp/features/reports/advance_dealer/advance_dealer_screen.dart';

// File Reports
import 'package:financeapp/features/file_reports/dashboard/file_reports_dashboard_screen.dart';
import 'package:financeapp/features/file_reports/manage_files/manage_files_screen.dart';

// Admin
import 'package:financeapp/features/admin/users/users_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.login,
  redirect: RouteGuards.redirect,
  routes: [
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.dashboard,
      builder: (context, state) => const DashboardScreen(),
    ),

    // ── Customers ──────────────────────────────────────────────────────────
    GoRoute(
      path: AppRoutes.customerList,
      builder: (context, state) => const CustomerListScreen(),
    ),
    GoRoute(
      path: AppRoutes.addCustomer,
      builder: (context, state) => const AddCustomerScreen(),
    ),
    GoRoute(
      path: AppRoutes.addFiles,
      builder: (context, state) => const AddFilesScreen(),
    ),
    GoRoute(
      path: AppRoutes.documents,
      builder: (context, state) => const DocumentsScreen(),
    ),

    // ── Master ─────────────────────────────────────────────────────────────
    GoRoute(
      path: AppRoutes.company,
      builder: (context, state) => const CompanyScreen(),
    ),
    GoRoute(
      path: AppRoutes.dealer,
      builder: (context, state) => const DealerScreen(),
    ),
    GoRoute(
      path: AppRoutes.broker,
      builder: (context, state) => const BrokerScreen(),
    ),
    GoRoute(
      path: AppRoutes.financeCompany,
      builder: (context, state) => const FinanceCompanyScreen(),
    ),
    GoRoute(
      path: AppRoutes.ownBank,
      builder: (context, state) => const OwnBankScreen(),
    ),
    GoRoute(
      path: AppRoutes.insurance,
      builder: (context, state) => const InsuranceScreen(),
    ),
    GoRoute(
      path: AppRoutes.expenses,
      builder: (context, state) => const ExpensesScreen(),
    ),

    // ── Payments ───────────────────────────────────────────────────────────
    GoRoute(
      path: AppRoutes.payment,
      builder: (context, state) => const PaymentScreen(),
    ),
    GoRoute(
      path: AppRoutes.commission,
      builder: (context, state) => const CommissionScreen(),
    ),

    // ── Reports ────────────────────────────────────────────────────────────
    GoRoute(
      path: AppRoutes.rtoPayment,
      builder: (context, state) => const RtoPaymentScreen(),
    ),
    GoRoute(
      path: AppRoutes.insurancePayment,
      builder: (context, state) => const InsurancePaymentScreen(),
    ),
    GoRoute(
      path: AppRoutes.expenseOut,
      builder: (context, state) => const ExpenseOutScreen(),
    ),
    GoRoute(
      path: AppRoutes.advanceDealer,
      builder: (context, state) => const AdvanceDealerScreen(),
    ),

    // ── File Reports ───────────────────────────────────────────────────────
    GoRoute(
      path: AppRoutes.fileReportsDashboard,
      builder: (context, state) => const FileReportsDashboardScreen(),
    ),
    GoRoute(
      path: AppRoutes.manageFiles,
      builder: (context, state) => const ManageFilesScreen(),
    ),

    // ── Admin ──────────────────────────────────────────────────────────────
    GoRoute(
      path: AppRoutes.users,
      builder: (context, state) => const UsersScreen(),
    ),
  ],
);
