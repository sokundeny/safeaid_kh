import 'package:flutter/material.dart';
import 'package:safeaid_kh/domain/entities/injury.dart';
import 'package:safeaid_kh/domain/entities/question_node.dart';
import 'package:safeaid_kh/domain/enums/action_type.dart';
import 'package:safeaid_kh/domain/enums/specialty.dart';

typedef AnswerCallback = void Function(String answer);
typedef ResultCallback = void Function(ActionType answer,{Specialty? specialty,Injury? injury});

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

    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Column(
        children: [
          // Question Container
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  node.test,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),

          const SizedBox(height: 24),

          // Answers
          if (!isLeaf)
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: node.answer.keys.map((answer) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: ElevatedButton(
                      onPressed: () => onAnswer?.call(answer),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red.shade600,
                        minimumSize: Size(size.width * 0.85, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 6,
                      ),
                      child: Text(
                        answer,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            )
          else
            // Leaf Node Result
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (node.action != null)
                    ElevatedButton(
                      onPressed: () {
                        if (onResult != null && node.action != null) {
                          if (node.action == ActionType.firstAid && node.result != null) {
                            onResult!(node.action!, injury: node.result);
                          } else if (node.action == ActionType.hospitalVisit && node.hospital != null) {
                            onResult!(node.action!, specialty: node.hospital);
                          }
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: node.action == ActionType.firstAid
                            ? Colors.green.shade400
                            : Colors.red.shade400,
                        padding: const EdgeInsets.symmetric(
                            vertical: 18, horizontal: 24),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        elevation: 8,
                      ),
                      child: Text(
                        node.action == ActionType.firstAid
                            ? "Take First Aid"
                            : "Go to Hospital",
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
