import 'package:flutter/material.dart';
import 'package:safeaid_kh/ui/screens/home.dart';
import 'package:safeaid_kh/ui/screens/injury_list.dart';
import 'package:safeaid_kh/ui/screens/history.dart';

enum Screen{
  home,
  injuryList,
  history
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Screen _currentScreen=Screen.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Logo"),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(
              Icons.map
            )
          )
        ],
      ),
      body: IndexedStack(
        index: _currentScreen.index,
        children: const [
          Home(),
          InjuryList(),
          History(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentScreen.index,
        onTap: (index) {
          setState(() {
            _currentScreen = Screen.values[index];
          });
        },
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.personal_injury),
            label: "Injury"
          ),   
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "history"
          )
        ],
      ),
    );
  }
}