import 'package:flutter/material.dart';
import 'package:safeaid_kh/domain/entities/app_manager.dart';
import 'package:safeaid_kh/domain/entities/history.dart';
import 'package:safeaid_kh/domain/entities/injury.dart';
import 'package:safeaid_kh/domain/entities/question_node.dart';
import 'package:safeaid_kh/domain/enums/action_type.dart';
import 'package:safeaid_kh/domain/enums/specialty.dart';
import 'package:safeaid_kh/ui/screens/injury_detail.dart';
import 'package:safeaid_kh/ui/widgets/hospital_result_screen.dart';
import 'package:safeaid_kh/ui/widgets/question_card.dart';

class QuestionFlowScreen extends StatefulWidget {
  final AppManager manager;

  const QuestionFlowScreen({super.key, required this.manager});

  @override
  State<QuestionFlowScreen> createState() => _QuestionFlowScreenState();
}

class _QuestionFlowScreenState extends State<QuestionFlowScreen> {
  QuestionNode? currentNode;
  bool _firstAid=false;
  bool _hospital=false;
  late Injury _selectedInjury;
  late Specialty _selectedSpecialty;

  @override
  void initState() {
    super.initState();
    currentNode = widget.manager.startQuestion();
  }

  void _handleAnswer(String answer) {
    final nextNode =widget.manager.nextQuestion(currentNode!, answer);

    if (nextNode == null) return;
 
    setState(() {
      currentNode = nextNode;
    });
  }

  void _handleResult(ActionType action,{Specialty? specialty,Injury? injury}) {
    setState(() {
      if (action == ActionType.firstAid) {
        widget.manager.histories.add(History(
          date: DateTime.now(), 
          actionTaken: ActionType.firstAid,
          injuryResult: injury
        ));
        _firstAid = true;
        _selectedInjury = injury!;
      } else if (action == ActionType.hospitalVisit) {
        widget.manager.histories.add(History(
          date: DateTime.now(), 
          actionTaken: ActionType.hospitalVisit,
          hospital: "The Best Hospital"
        ));
        _hospital = true;
        _selectedSpecialty=specialty!;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currentNode == null) {
      return const Scaffold(
        body: Center(child: Text("No questions available")),
      );
    }

    if(_firstAid){
      return InjuryDetail(injury: _selectedInjury);
    }

    if(_hospital){
      return HospitalResultScreen(manager: widget.manager,specialty: _selectedSpecialty,);
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Detect Injury")),
      body: Center(
        child: QuestionCard(
          node: currentNode!,
          onAnswer: _handleAnswer,
          onResult: _handleResult,
        ),
      ),
    );
  }
}
