import 'package:flutter/material.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({super.key});

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF051D36),
      body: const Center(
        child: Text(
          'Bottom Bar',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.amberAccent,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add',
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
        ),
      ),
    );
  }
}
