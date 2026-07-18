// App route name constants
class AppRoutes {
  AppRoutes._();

  // Auth
  static const String login = '/login';

  // Dashboard
  static const String dashboard = '/dashboard';

  // Customers
  static const String customerList = '/customers';
  static const String addCustomer = '/customers/add';
  static const String addFiles = '/customers/add-files';
  static const String documents = '/customers/documents';

  // Master
  static const String company = '/master/company';
  static const String dealer = '/master/dealer';
  static const String broker = '/master/broker';
  static const String financeCompany = '/master/finance-company';
  static const String ownBank = '/master/own-bank';
  static const String insurance = '/master/insurance';
  static const String expenses = '/master/expenses';

  // Payments
  static const String payment = '/payments/payment';
  static const String commission = '/payments/commission';

  // Reports
  static const String rtoPayment = '/reports/rto-payment';
  static const String insurancePayment = '/reports/insurance-payment';
  static const String expenseOut = '/reports/expense-out';
  static const String advanceDealer = '/reports/advance-dealer';

  // File Reports
  static const String fileReportsDashboard = '/file-reports/dashboard';
  static const String manageFiles = '/file-reports/manage-files';

  // Admin
  static const String users = '/admin/users';
}
