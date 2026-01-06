import 'package:flutter/material.dart';
import 'package:safeaid_kh/domain/entities/hostpital.dart';
import 'package:safeaid_kh/domain/entities/user_location.dart';
import 'package:safeaid_kh/ui/widgets/hospital_listtile.dart';

class HospitalList extends StatelessWidget {

  final UserLocation user;
  final List<Hospital> hospitals;
  
  const HospitalList({
    super.key,
    required this.user,
    required this.hospitals
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hospital'),
      ),
      body: ListView.builder(
        itemCount: hospitals.length,
        itemBuilder: (context, index) {
          final Hospital hospital =hospitals[index];
          

          return HospitalListTile(
            hospital: hospital, 
            userLatitude: user.latitude, 
            userLongitude: user.longitude
          );
        },
      ),
    );
  }
}
