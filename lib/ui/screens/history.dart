import 'package:flutter/material.dart';
import 'package:safeaid_kh/domain/entities/history.dart';
import 'package:safeaid_kh/ui/widgets/history_listtile.dart';

class HistoryScreen extends StatelessWidget {

  final List<History> histories;
  

  const HistoryScreen({
    super.key,
    required this.histories
    });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: histories.length,
      itemBuilder: (context,index){
        History selectedHistory=histories[index];

        return HistoryListTile(history:selectedHistory);
      }
    );
  }
}