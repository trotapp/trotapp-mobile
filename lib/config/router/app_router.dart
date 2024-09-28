import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trotapp_mobile/config/constants/app_routes.dart';
import 'package:trotapp_mobile/presentation/screens/screens.dart';
import 'package:trotapp_mobile/presentation/widgets/shared/custom_drawer.dart';
import 'package:trotapp_mobile/presentation/widgets/widgets.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.community,
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return ScaffoldWithNavigation(child: child);
        },
        routes: [
          GoRoute(
            path: AppRoutes.community,
            builder: (context, state) => const CommunityScreen(),
          ),
          GoRoute(
            path: AppRoutes.upcomingEvents,
            builder: (context, state) => const UpcomingEventsScreen(),
          ),
          GoRoute(
            path: AppRoutes.activity,
            builder: (context, state) => const ActivityScreen(),
          ),
          GoRoute(
            path: AppRoutes.myEvents,
            builder: (context, state) => const MyEventsScreen(),
          ),
          GoRoute(
            path: AppRoutes.profile,
            builder: (context, state) => const ProfileScreen(),
          ),
        ],
      ),
    ],
  );
}

class ScaffoldWithNavigation extends StatefulWidget {
  final Widget child;

  const ScaffoldWithNavigation({Key? key, required this.child}) : super(key: key);

  @override
  _ScaffoldWithNavigationState createState() => _ScaffoldWithNavigationState();
}

class _ScaffoldWithNavigationState extends State<ScaffoldWithNavigation> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Mi Aplicación'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      drawer: CustomDrawer(),
      body: widget.child,
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}