import 'package:flutter/material.dart';
import 'package:sem_4_flutter/project/homepage.dart';
import 'package:sem_4_flutter/project/userlist.dart';
import 'package:sem_4_flutter/project/favouriteuser.dart';
import 'package:sem_4_flutter/project/aboutus.dart';

class AppBottomNav extends StatelessWidget {
  final int currentIndex;

  const AppBottomNav({Key? key, required this.currentIndex}) : super(key: key);

  void _onItemTapped(BuildContext context, int index) {
    if (index == currentIndex) return;

    Widget page;
    switch (index) {
      case 0:
        page = Homepage();
        break;
      case 1:
        page = UserList(users: [], favoriteUsers: []);
        break;
      case 2:
        page = Favourite();
        break;
      default:
        page = AboutUs();
    }

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      elevation: 8,
      selectedItemColor: Colors.pinkAccent,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Users'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
        BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
      ],
      currentIndex: currentIndex,
      onTap: (index) => _onItemTapped(context, index),
    );
  }
}
