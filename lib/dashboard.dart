import 'package:flutter/material.dart';
import 'package:test_suryacipta/components/footer.dart';
import 'package:test_suryacipta/components/header.dart';
import 'package:test_suryacipta/pages/home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedPage = 0;

  static const List<Widget> _pages = <Widget>[
    Home(),
    Text('Search'),
    Text('Profile'),
  ];

  static const List<String> _titles = <String>[
    'Home',
    'Search',
    'Profile',
  ];

  void _clickable(int index){
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: 
          _pages[_selectedPage],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        selectedItemColor: Colors.red,
        onTap: _clickable,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}