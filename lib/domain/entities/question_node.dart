import 'package:safeaid_kh/domain/entities/injury.dart';
import 'package:safeaid_kh/domain/enums/action_type.dart';
import 'package:safeaid_kh/domain/enums/specialty.dart';


class QuestionNode {
  final String test;
  final Map<String, QuestionNode> answer;
  final ActionType? action;
  final Specialty? hospital;
  final Injury? result;

  QuestionNode({
    required this.test,
    Map<String, QuestionNode>? answer,
    this.action,
    this.hospital,
    this.result,
  }) : answer = answer ?? {};
}
