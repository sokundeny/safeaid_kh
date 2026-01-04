import '../domain/entities/hostpital.dart';
import '../domain/enums/specialty.dart';

final mockHospitals = [
  // Eye hospitals
  Hospital(
    id: "h_eye1",
    name: "Eye Care Center 1",
    latitude: 11.5621,
    longitude: 104.8889,
    tel: "012345678",
    specialties: [Specialty.eye],
  ),
  Hospital(
    id: "h_eye2",
    name: "Vision Hospital 2",
    latitude: 11.5700,
    longitude: 104.8900,
    tel: "098765432",
    specialties: [Specialty.eye],
  ),

  // General hospitals
  Hospital(
    id: "h_gen1",
    name: "General Hospital 1",
    latitude: 11.5650,
    longitude: 104.8950,
    tel: "011223344",
    specialties: [Specialty.general],
  ),
  Hospital(
    id: "h_gen2",
    name: "General Medical Center 2",
    latitude: 11.5680,
    longitude: 104.9000,
    tel: "022334455",
    specialties: [Specialty.general],
  ),

  // Dental hospitals
  Hospital(
    id: "h_den1",
    name: "Dental Clinic 1",
    latitude: 11.5630,
    longitude: 104.8850,
    tel: "033445566",
    specialties: [Specialty.dental],
  ),
  Hospital(
    id: "h_den2",
    name: "Dental Care Center 2",
    latitude: 11.5670,
    longitude: 104.8870,
    tel: "044556677",
    specialties: [Specialty.dental],
  ),
];
