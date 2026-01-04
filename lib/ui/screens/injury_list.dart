import 'package:flutter/material.dart';
import '../data/injury_data.dart';
import '../models/injury.dart';
import '../widgets/injury_card.dart';
import 'injury_detail.dart';

class InjuryList extends StatelessWidget {
  const InjuryList({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Injury> injuries = injuryTypes.expand((type) => type.injuries).toList();
    return Scaffold(
      appBar: AppBar(title: const Text("Injury List"),
      centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: injuries.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            final injury = injuries[index];

            return InjuryCard(
              injury: injury,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => InjuryDetail(injury: injury),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
