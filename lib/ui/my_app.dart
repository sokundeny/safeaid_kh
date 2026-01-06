import 'package:flutter/material.dart';
import 'package:safeaid_kh/domain/entities/app_manager.dart';
import 'package:safeaid_kh/ui/screens/home.dart';
import 'package:safeaid_kh/ui/screens/injury_list.dart';
import 'package:safeaid_kh/ui/screens/history.dart';
import 'package:safeaid_kh/ui/screens/hospital_list.dart';

enum Screen{
  home,
  injuryList,
  history
}

class MyApp extends StatefulWidget {

  final AppManager manager;

  const MyApp({
    super.key,
    required this.manager
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Screen _currentScreen=Screen.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SafeAid Kh"),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>HospitalList(
                  user: widget.manager.user,
                  hospitals: widget.manager.hospitals,
                )),
              );
            }, 
            icon: Icon(
              Icons.local_hospital
            )
          )
        ],
      ),
      body: IndexedStack(
        index: _currentScreen.index,
        children: [
          Home(manager:widget.manager),
          InjuryList(manager: widget.manager,),
          HistoryScreen(histories: widget.manager.histories),
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