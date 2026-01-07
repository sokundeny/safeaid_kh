import 'package:flutter/material.dart';
import 'package:safeaid_kh/domain/entities/injury.dart';
import 'package:safeaid_kh/domain/entities/question_node.dart';
import 'package:safeaid_kh/domain/enums/action_type.dart';
import 'package:safeaid_kh/domain/enums/specialty.dart';

typedef AnswerCallback = void Function(String answer);
typedef ResultCallback = void Function(
  ActionType answer, {
  Specialty? specialty,
  Injury? injury,
});

class QuestionCard extends StatelessWidget {
  final QuestionNode node;
  final AnswerCallback? onAnswer;
  final ResultCallback? onResult;

  const QuestionCard({
    super.key,
    required this.node,
    this.onAnswer,
    this.onResult,
  });

  @override
  Widget build(BuildContext context) {
    final isLeaf = node.answer.isEmpty;
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // QUESTION CARD
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(28),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.red.shade50,
                    Colors.white,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(28),
                border: Border.all(color: Colors.red.shade100, width: 1.5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red.withOpacity(0.12),
                    blurRadius: 20,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  node.test,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                    height: 1.4,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 28),
          Expanded(
            flex: 4,
            child: isLeaf ? _buildResult() : _buildAnswers(size),
          ),
        ],
      ),
    );
  }

  // ANSWER BUTTONS
  Widget _buildAnswers(Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: node.answer.keys.map((answer) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: InkWell(
            borderRadius: BorderRadius.circular(22),
            onTap: () => onAnswer?.call(answer),
            child: Container(
              width: size.width * 0.88,
              padding: const EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: Colors.red.shade200),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red.withOpacity(0.08),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.personal_injury,
                    color: Colors.red.shade400,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    answer,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  // RESULT 
  Widget _buildResult() {
    if (node.action == null) return const SizedBox();

    final isFirstAid = node.action == ActionType.firstAid;

    return Center(
      child: ElevatedButton.icon(
        onPressed: () {
          if (onResult != null) {
            if (isFirstAid && node.result != null) {
              onResult!(node.action!, injury: node.result);
            } else if (!isFirstAid && node.hospital != null) {
              onResult!(node.action!, specialty: node.hospital);
            }
          }
        },
        icon: Icon(
          isFirstAid ? Icons.medical_services : Icons.local_hospital,
          size: 26,
        ),
        label: Text(
          isFirstAid ? "Take First Aid" : "Go to Hospital",
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor:
              isFirstAid ? Colors.green.shade500 : Colors.red.shade500,
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 36,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          elevation: 10,
        ),
      ),
    );
  }
}
