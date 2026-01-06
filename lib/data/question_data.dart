import 'package:safeaid_kh/domain/entities/question_node.dart';
import 'package:safeaid_kh/domain/enums/action_type.dart';
import 'package:safeaid_kh/domain/enums/specialty.dart';
import '../domain/entities/injury.dart';
import 'injury_data.dart';

/// ===============================
/// HELPER TO CREATE LEAF NODE
/// ===============================
QuestionNode createLeafNode(Injury injury) {
  if (injury.steps.isNotEmpty) {
    // Store the injury itself; action is first aid
    return QuestionNode(
      test: "Injury: ${injury.name}", // show injury first
      action: ActionType.firstAid,
      result: injury, // store the full injury object
    );
  } else {
    // No first aid steps -> hospital needed
    return QuestionNode(
      test: "Injury: ${injury.name} requires hospital attention",
      action: ActionType.hospitalVisit,
      hospital: Specialty.general,
    );
  }
}

/// ===============================
/// SAMPLE LEAF NODES
/// ===============================

// Burn
final burnFirstDegreeNode = createLeafNode(
  injuryTypes
      .firstWhere((t) => t.name == "Burn & Heat Injury")
      .injuries
      .first
      .subInjuries
      .first, // First-Degree Burn
);

final burnThirdDegreeNode = createLeafNode(
  injuryTypes
      .firstWhere((t) => t.name == "Burn & Heat Injury")
      .injuries
      .first
      .subInjuries
      .last, // Third-Degree Burn
);

// Bleeding
final minorBleedingNode = createLeafNode(
  injuryTypes
      .firstWhere((t) => t.name == "Wounds & Bleeding")
      .injuries
      .first
      .subInjuries
      .first, // Minor Cut
);

final severeBleedingNode = createLeafNode(
  injuryTypes
      .firstWhere((t) => t.name == "Wounds & Bleeding")
      .injuries
      .last
      .subInjuries
      .first, // Severe External Bleeding
);

/// ===============================
/// SECOND LEVEL QUESTIONS
/// ===============================
final burnQuestion = QuestionNode(
  test: "Is the burn small and without blisters?",
  answer: {
    "Yes": burnFirstDegreeNode,
    "No": burnThirdDegreeNode,
  },
);

final bleedingQuestion = QuestionNode(
  test: "Is the bleeding heavy or uncontrolled?",
  answer: {
    "Yes": severeBleedingNode,
    "No": minorBleedingNode,
  },
);

final painLocationQuestion = QuestionNode(
  test: "Where is the pain located?",
  answer: {
    "Teeth / Mouth": QuestionNode(
      test: "Visit a dental clinic",
      action: ActionType.hospitalVisit,
      hospital: Specialty.dental,
    ),
    "Eyes": QuestionNode(
      test: "Visit an eye clinic",
      action: ActionType.hospitalVisit,
      hospital: Specialty.eye,
    ),
    "Other body part": QuestionNode(
      test: "Visit a general hospital",
      action: ActionType.hospitalVisit,
      hospital: Specialty.general,
    ),
  },
);

/// ===============================
/// ROOT QUESTION
/// ===============================
final rootQuestionNode = QuestionNode(
  test: "What happened?",
  answer: {
    "Burn": burnQuestion,
    "Cut / Wound": bleedingQuestion,
    "Severe pain": painLocationQuestion,
  },
);
