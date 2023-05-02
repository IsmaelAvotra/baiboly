import 'package:flutter/material.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({super.key});

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  int _page = 0;

  final List<Widget> _pages = <Widget>[
    const Text('Baiboly'),
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
      backgroundColor: const Color(0xFF051D36),
      body: Center(
        child: _pages.elementAt(_page),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff0F0E17),
        selectedItemColor: const Color(0xffFFFFFE),
        selectedIconTheme: const IconThemeData(
          size: 30,
          color: Color(0xffF7E733),
        ),
        type: BottomNavigationBarType.fixed,
        currentIndex: _page,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Baiboly',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delete),
            label: "Delete",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: "Edit",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
        ],
        onTap: (int page) {
          updatePage(page);
        },
      ),
    );
  }
}
