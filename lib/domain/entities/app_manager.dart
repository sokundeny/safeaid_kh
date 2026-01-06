import 'package:safeaid_kh/domain/entities/hostpital.dart';
import 'package:safeaid_kh/domain/entities/injury_type.dart';
import 'package:safeaid_kh/domain/entities/question_node.dart';
import 'package:safeaid_kh/domain/entities/user_location.dart';
import './history.dart';

class AppManager {

  UserLocation user=UserLocation(latitude: 11.5564, longitude: 104.9282);

  List<Hospital> hospitals=[];

  QuestionNode? rootQuestion;

  List<History> histories = [];

  List<InjuryType> injuryTypes=[];

  AppManager({this.rootQuestion});

  QuestionNode? startQuestion() {
    return rootQuestion;
  }

  QuestionNode? nextQuestion(QuestionNode current, String answer) {
    return current.answer[answer];
  }

  bool isLeaf(QuestionNode node) {
    return node.answer.isEmpty && node.action != null;
  }


}