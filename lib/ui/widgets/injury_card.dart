import 'package:flutter/material.dart';
import '../../domain/entities/injury.dart';

class InjuryCard extends StatelessWidget {
  final Injury injury;
  final VoidCallback onTap;

  const InjuryCard({
    super.key,
    required this.injury,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF8FAFC),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.healing,
                size: 40,
                color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 8),

            Text(
              injury.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
