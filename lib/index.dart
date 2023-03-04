import 'package:flutter/material.dart';
import 'package:pagination_exp/pagination.dart';
import 'package:pagination_exp/stories.dart';

class Index extends StatefulWidget {
  int currentIndex;
  Index({super.key, this.currentIndex = 0});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  void onTapped(int index) {
    setState(() {
      widget.currentIndex = index;
    });
  }

  List<Widget> tabs = [const Pagination(), const Stories()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[widget.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: widget.currentIndex,
          onTap: (value) {
            onTapped(value);
          },
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Pagination",
                backgroundColor: Colors.yellow),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Stories",
              backgroundColor: Colors.blue,
            ),
          ]),
    );
  }
}
