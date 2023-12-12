import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mon_enfant_grandit/view/section/section1/page4.dart';

import '../launch.dart';
import '../view/homes/home.dart';
import '../view/section/section1/page1.dart';
import '../view/section/section2/page2.dart';
import '../view/section/section3/page3.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const launchPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'page1',
          pageBuilder: (BuildContext context, GoRouterState state) {
            final Map<String, dynamic> params = state.pathParameters;

            return CustomTransitionPage<void>(
              key: state.pageKey,
              child: Page1(
                imagePath: params['imagePath'] ?? 'assets/images/lancement.jpg',
                title: params?['title'] ?? 'kkkk',
              ),
              transitionDuration: const Duration(milliseconds: 150),
              transitionsBuilder: (BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                  Widget child) {
                // Change the opacity of the screen using a Curve based on the the animation's
                // value
                return FadeTransition(
                  opacity:
                      CurveTween(curve: Curves.easeInOut).animate(animation),
                  child: child,
                );
              },
            );
          },
        ),
        GoRoute(
          path: 'acceuil',
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage<void>(
              key: state.pageKey,
              child: const HomePage(),
              transitionDuration: const Duration(milliseconds: 150),
              transitionsBuilder: (BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                  Widget child) {
                return FadeTransition(
                  opacity:
                      CurveTween(curve: Curves.easeInOut).animate(animation),
                  child: child,
                );
              },
            );
          },
        ),
        GoRoute(
          path: 'page2',
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage<void>(
              key: state.pageKey,
              child: Page2(),
              barrierDismissible: true,
              barrierColor: Colors.black38,
              opaque: false,
              transitionDuration: Duration.zero,
              transitionsBuilder: (_, __, ___, Widget child) => child,
            );
          },
        ),
        GoRoute(
          path: 'page3',
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage<void>(
              key: state.pageKey,
              child: Page3(),
              barrierDismissible: true,
              barrierColor: Colors.black38,
              opaque: false,
              transitionDuration: const Duration(milliseconds: 500),
              reverseTransitionDuration: const Duration(milliseconds: 200),
              transitionsBuilder: (BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                  Widget child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            );
          },
        ),
      ],
    ),
  ],
);
