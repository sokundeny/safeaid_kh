import 'package:flutter/material.dart';
import 'package:safeaid_kh/domain/entities/app_manager.dart';
import 'package:safeaid_kh/ui/screens/specific_injury_list.dart';
import '../../domain/entities/injury.dart';
import '../widgets/injury_card.dart';

class InjuryList extends StatelessWidget {

  final AppManager manager;

  const InjuryList({
    super.key,
    required this.manager
    });
  @override
  Widget build(BuildContext context) {
    final List<Injury> injuries = manager.injuryTypes.expand((type) => type.injuries).toList();
    return Scaffold(
      appBar: AppBar(title: const Text("Injury List"),
      centerTitle: true,
      ),
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
                  builder: (_) => SpecificInjuryList(injury: injuries[index]),
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
