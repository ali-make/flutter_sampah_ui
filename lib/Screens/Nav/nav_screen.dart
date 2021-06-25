import 'package:flutter/material.dart';
import 'package:sampah_project/Screens/Home/home.dart';
import 'package:sampah_project/components/custom_tab_bar.dart';

class NavScreen extends StatefulWidget {
  NavScreen({Key? key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screen = [
    Home(),
    Scaffold(
      body: Center(
        child: Text(
          'Halaman Posting',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text(
          'Tampilan Map',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text(
          'Your Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text(
          'Friends',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    ),
    Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Menu',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.logout,
                ),
                label: Text(
                  'Sign Out',
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreen,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];
  final List<IconData> _icons = const [
    Icons.home,
    Icons.post_add_sharp,
    Icons.map,
    Icons.account_circle_outlined,
    Icons.group_outlined,
    Icons.menu,
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _screen,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(
            bottom: 12.0,
          ),
          child: CustomTabBar(
            icons: _icons,
            selectedIndex: _selectedIndex,
            onTap: (index) => setState(() => _selectedIndex = index),
          ),
        ),
      ),
    );
  }
}
