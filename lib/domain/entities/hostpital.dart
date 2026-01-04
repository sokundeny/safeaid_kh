import 'package:uuid/uuid.dart';
import './../enums/specialty.dart';

class Hospital {

  static const Uuid _uuid = Uuid();

  String id;
  String name;
  double latitude;
  double longitude;
  String tel;
  List<Specialty> specialties;

  Hospital({
    String? id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.tel,
    required this.specialties
  }) : id = id ?? _uuid.v4();

}