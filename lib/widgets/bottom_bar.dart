import 'package:baiboly_app/screens/baiboly_screen.dart';
import 'package:flutter/material.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({super.key});

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  int _page = 0;

  final List<Widget> _pages = <Widget>[
    const BaibolyScreen(),
    const Text('Delete'),
    const Text('Edit'),
    const Text('Search'),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0E17),
      body: Center(
        child: _pages.elementAt(_page),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: const Color(0xff0F0E17),
          selectedItemColor: const Color(0xffFFFFFE),
          selectedIconTheme: const IconThemeData(
            size: 30,
            color: Color(0xffF5E663),
          ),
          type: BottomNavigationBarType.fixed,
          currentIndex: _page,
          items: const [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Icon(Icons.menu_book),
              ),
              label: 'Baiboly',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Icon(Icons.music_note),
              ),
              label: "Fihirana",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Icon(Icons.favorite),
              ),
              label: "Perikiopa",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Icon(Icons.person),
              ),
              label: "Profil",
            ),
          ],
          onTap: (int page) {
            updatePage(page);
          },
        ),
      ),
    );
  }
}
