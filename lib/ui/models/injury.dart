import 'first_aid_step.dart';

class Injury {
  final String id;
  final String name;
  final String description;
  final String imagePath;
  final List<FirstAidStep> steps;

  Injury({
    required this.id,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.steps,
  });
}
