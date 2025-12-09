import 'package:flutter/material.dart';
import 'profile.dart';
import 'wallet.dart';
import 'track.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final _screens = [
    Center(child: Text('home')),
    WalletPage(),
    TrackPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() => _currentIndex = index),
        selectedItemColor: Color(0xFF0560FA),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          _buildItem(Icons.home_outlined, Icons.home, 'Home', 0),
          _buildItem(Icons.account_balance_wallet_outlined, null, 'Wallet', 1),
          _buildItem(Icons.local_shipping_outlined, null, 'Track', 2),
          _buildItem(Icons.person_outline, null, 'Profile', 3),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildItem(
      IconData icon,
      IconData? activeIcon,
      String label,
      int index,
      ) {
    final bool isActive = _currentIndex == index;

    Widget iconWithLine(IconData iconData) {
      return Column(
        children: [
          Container(
            width: 35,
            height: 2,
            decoration: BoxDecoration(
              color: isActive ? Color(0xFF0560FA) : Colors.transparent,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          SizedBox(height: 4),
          Icon(iconData),
        ],
      );
    }

    return BottomNavigationBarItem(
      icon: iconWithLine(icon),
      activeIcon: iconWithLine(activeIcon ?? icon),
      label: label,
    );
  }
}
