import 'package:flutter/material.dart';
import 'package:safeaid_kh/data/hospital_data.dart';
import 'package:safeaid_kh/domain/entities/hostpital.dart';
import 'package:safeaid_kh/ui/widgets/hospital_listtile.dart';
import 'package:safeaid_kh/data/user_data.dart';

class HospitalList extends StatelessWidget {
  
  const HospitalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hospital'),
      ),
      body: ListView.builder(
        itemCount: mockHospitals.length,
        itemBuilder: (context, index) {
          final Hospital hospital = mockHospitals[index];
          

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
