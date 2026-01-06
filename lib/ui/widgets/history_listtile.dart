import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For date formatting
import 'package:safeaid_kh/domain/entities/history.dart';
import 'package:safeaid_kh/domain/enums/action_type.dart';

class HistoryListTile extends StatelessWidget {
  final History history;

  const HistoryListTile({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    // Format date nicely
    final dateFormatted = DateFormat('dd MMM yyyy – HH:mm').format(history.date);

    // Choose icon based on action
    final icon = history.actionTaken == ActionType.firstAid
        ? const Icon(Icons.healing, color: Colors.green)
        : const Icon(Icons.local_hospital, color: Colors.red);

    // Title and subtitle
    final titleText = history.injuryResult?.name ?? history.hospital ?? "Unknown";
    final subtitleText = history.actionTaken == ActionType.firstAid
        ? "First Aid Applied"
        : "Hospital Visited: ${history.hospital ?? 'Unknown'}";

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        color: history.actionTaken == ActionType.firstAid
            ? Colors.green.shade50
            : Colors.red.shade50,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        leading: icon,
        title: Text(
          titleText,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitleText),
        trailing: Text(
          dateFormatted,
          style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
    );
  }
}
