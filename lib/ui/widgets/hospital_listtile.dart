import 'package:flutter/material.dart';
import 'package:safeaid_kh/domain/entities/hostpital.dart';
import 'dart:math';

class HospitalListTile extends StatelessWidget {
  final Hospital hospital;
  final double userLatitude;
  final double userLongitude;

  const HospitalListTile({
    super.key,
    required this.hospital,
    required this.userLatitude,
    required this.userLongitude,
  });

  double _calculateDistance(
    double lat1,
    double lon1,
    double lat2,
    double lon2,
  ) {
    const double earthRadius = 6371;

    double dLat = _degToRad(lat2 - lat1);
    double dLon = _degToRad(lon2 - lon1);

    double a =
        sin(dLat / 2) * sin(dLat / 2) +
        cos(_degToRad(lat1)) *
            cos(_degToRad(lat2)) *
            sin(dLon / 2) *
            sin(dLon / 2);

    double c = 2 * atan2(sqrt(a), sqrt(1 - a));

    return earthRadius * c;
  }

  double _degToRad(double deg) => deg * (pi / 180);

  String _formatDistance(double km) {
    if (km < 1) {
      return "${(km * 1000).toStringAsFixed(0)} m away";
    }
    return "${km.toStringAsFixed(2)} km away";
  }

  @override
  Widget build(BuildContext context) {
    final distance = _calculateDistance(
      userLatitude,
      userLongitude,
      hospital.latitude,
      hospital.longitude,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.local_hospital,
                    color: Colors.red,
                    size: 28,
                  ),
                ),

                const SizedBox(width: 16),

                // Hospital Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hospital.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Column(
                        spacing: 6,
                        children: hospital.specialties.map((s) {
                          return Text(
                              s.name.toUpperCase(),
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey
                              ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        _formatDistance(distance),
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),

                // Call Button
                Icon(
                  Icons.call,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
