import 'injury.dart';

class InjuryType {
  final String id;
  final String name;
  final String imagePath;
  final List<Injury> injuries;

  InjuryType({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.injuries,
  });
}
