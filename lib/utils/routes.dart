import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manna/screens/auth/login_page.dart';
import 'package:manna/screens/auth/signup_page.dart';
import 'package:manna/screens/explore_page.dart';
import 'package:manna/screens/home_page.dart';
import 'package:manna/screens/notifications_page.dart';
import 'package:manna/screens/search_page.dart';
import 'package:manna/screens/user_profile_page.dart';
import 'package:manna/widgets/scaffold_with_bottom_nav_bar.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(navigatorKey: _rootNavigatorKey, initialLocation: '/login', routes: [
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginPage(),
  ),
  GoRoute(
    path: '/signup',
    builder: (context, state) => const SignupPage(),
  ),
  ShellRoute(builder: (context, state, child) => ScaffoldWithBottomNavBar(child: child), routes: <RouteBase>[
    GoRoute(
      path: '/home',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/explore',
      builder: (context, state) => ExplorePage(),
      routes: <RouteBase>[
        GoRoute(
          path: 'search',
          builder: (context, state) => SearchPage(),
        )
      ],
    ),
    GoRoute(
      path: '/notifications',
      builder: (context, state) => NotificationsPage(),
    ),
    GoRoute(path: '/user_profile', builder: (context, state) => UserProfilePage())
  ])
]);
