import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trotapp_mobile/config/constants/app_routes.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Comunidad',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event),
          label: 'Próximos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Actividad',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Mis Eventos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            GoRouter.of(context).go(AppRoutes.community);
            break;
          case 1:
            GoRouter.of(context).go(AppRoutes.upcomingEvents);
            break;
          case 2:
            GoRouter.of(context).go(AppRoutes.activity);
            break;
          case 3:
            GoRouter.of(context).go(AppRoutes.myEvents);
            break;
          case 4:
            GoRouter.of(context).go(AppRoutes.profile);
            break;
        }
      },
    );
  }
}
