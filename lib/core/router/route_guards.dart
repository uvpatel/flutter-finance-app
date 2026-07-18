import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:financeapp/core/router/app_routes.dart';

class RouteGuards {
  RouteGuards._();

  // Key used to store auth token in SharedPreferences
  static const String _authKey = 'auth_token';

  /// Checks if the user is authenticated.
  static Future<bool> isAuthenticated() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(_authKey);
    return token != null && token.isNotEmpty;
  }

  /// Saves auth token on login.
  static Future<void> saveAuthToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_authKey, token);
  }

  /// Clears auth token on logout.
  static Future<void> clearAuthToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_authKey);
  }

  /// GoRouter redirect callback.
  /// Redirects unauthenticated users to login.
  /// Redirects authenticated users away from the login page.
  static Future<String?> redirect(
    BuildContext context,
    GoRouterState state,
  ) async {
    final loggedIn = await isAuthenticated();
    final isLoginPage = state.matchedLocation == AppRoutes.login;

    if (!loggedIn && !isLoginPage) {
      return AppRoutes.login;
    }

    if (loggedIn && isLoginPage) {
      return AppRoutes.dashboard;
    }

    return null; // No redirect needed
  }
}
