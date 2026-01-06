import 'first_aid_step.dart';

class Injury {
  final String id;
  final String name;
  final String description;
  final String imagePath;
  final List<FirstAidStep> steps;
  
  final List<Injury> subInjuries;

  Injury({
    required this.id,
    required this.name,
    required this.description,
    required this.imagePath,
    this.steps = const [],
    this.subInjuries = const [],
  });
}

