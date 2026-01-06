import 'package:safeaid_kh/domain/entities/injury.dart';
import 'package:safeaid_kh/domain/enums/action_type.dart';

class History {
  DateTime date;
  Injury? injuryResult;
  ActionType? actionTaken;
  String? hospital;

  History({
    required this.date,
    this.injuryResult,
    required this.actionTaken,
    this.hospital,
  });
}
