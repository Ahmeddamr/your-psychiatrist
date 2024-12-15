import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Handle action based on index
    switch (index) {
      case 0:
        // Action for Home icon tapped
        // Example: Navigate to Home screen
        Navigator.pushNamed(context, '/homeScreen');
        break;
      case 1:
        // Action for Therapist icon tapped
        // Example: Navigate to Therapist screen
        Navigator.pushNamed(context, '/therapist');
        break;

      case 2:
        // Action for Profile icon tapped
        // Example: Navigate to Profile screen
        Navigator.pushNamed(context, '/profilePage');
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromRGBO(23, 38, 96, 1),
      selectedItemColor: Color.fromRGBO(39, 56, 123, 1),
      unselectedItemColor: Colors.white,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Therapist',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Profile',
        ),
      ],
    );
  }
}
