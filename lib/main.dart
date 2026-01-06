import 'package:flutter/material.dart';
import 'package:safeaid_kh/domain/entities/app_manager.dart';
import 'package:safeaid_kh/ui/my_app.dart';
import 'package:safeaid_kh/data/hospital_data.dart';
import 'package:safeaid_kh/data/user_data.dart';
import 'package:safeaid_kh/data/question_data.dart';
import 'package:safeaid_kh/data/injury_data.dart';

void main() {

  AppManager manager=AppManager(rootQuestion: rootQuestionNode);
  manager.hospitals=mockHospitals;
  manager.user=user;
  manager.injuryTypes=injuryTypes;

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme:ThemeData(
      primaryColor: Color(0xFF1E3A8A),
      scaffoldBackgroundColor: Color(0xFFF8FAFC),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF1E3A8A),
        foregroundColor: Colors.white,
      ),
      colorScheme: ColorScheme.light(
        primary: Color(0xFF1E3A8A),
        secondary: Color(0xFFDC2626),
        error: Color(0xFFDC2626),
      ),
    ),
    home: MyApp(manager: manager,),
  ));
}


