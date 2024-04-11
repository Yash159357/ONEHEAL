import 'package:flutter/material.dart';
import 'package:trial/screens/home.dart';
import 'package:trial/widgets/mainDrawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});
  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectPageIndex = 0;
  final List<Widget> screenList = const [HomeScreen(), Text("No data")];

  void _selectPage(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "VitalLink",
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 30,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.4),
      ),
      drawer: MainDrawer(),
      body: screenList[_selectPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectPageIndex,
        onTap: _selectPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital_outlined),
            label: "Visit List",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum_outlined),
            label: "Forums",
          ),
        ],
      ),
    );
  }
}
