import 'package:flutter/material.dart';
import 'package:safeaid_kh/domain/entities/app_manager.dart';
import 'package:safeaid_kh/domain/entities/hostpital.dart';
import 'package:safeaid_kh/domain/enums/specialty.dart';
import 'package:safeaid_kh/ui/widgets/hospital_listtile.dart';

class HospitalResultScreen extends StatelessWidget {

  final AppManager manager;
  final Specialty specialty;

  const HospitalResultScreen({
    super.key,
    required this.manager,
    required this.specialty
    });

  @override
  Widget build(BuildContext context) {
    final List<Hospital> sortedHospitals = manager.hospitals.where((hospital) => hospital.specialties.contains(specialty)).toList();
    return Scaffold(
      appBar: AppBar(title: const Text("Find nearest hospital")),
      body: ListView.builder(
        itemCount: sortedHospitals.length,
        itemBuilder: ((context,index){
          Hospital selectedHospital=sortedHospitals[index];
          return HospitalListTile(
            hospital: selectedHospital, 
            userLatitude: manager.user.latitude, 
            userLongitude: manager.user.longitude
          );
        })
        ),
      );
  }
}
