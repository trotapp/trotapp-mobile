import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScaffold extends StatefulWidget {
  final Widget child;

  const MainScaffold({required this.child});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _selectedIndex = 0;

  final List<String> _navRoutes = [
    '/home',
    '/upcoming_events',
    '/activity',
    '/my_events',
    '/profile'
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    context.go(_navRoutes[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TrotApp'),
      ),
      drawer: _buildDrawer(),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.event), label: 'Upcoming Events'),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_run), label: 'Activity'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'My Events'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Drawer _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text('Usuario TrotApp'),
            accountEmail: Text('usuario@trotapp.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.png'),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              context.go('/home');
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.event),
            title: const Text('Upcoming Events'),
            onTap: () {
              context.go('/upcoming_events');
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.directions_run),
            title: const Text('Activity'),
            onTap: () {
              context.go('/activity');
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('My Events'),
            onTap: () {
              context.go('/my_events');
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              context.go('/profile');
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
