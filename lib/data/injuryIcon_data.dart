import 'package:flutter/material.dart';

class InjuryIconMapper {
  static IconData getIcon(String name) {
    final value = name.toLowerCase();

    if (value.contains('burn')) {
      return Icons.local_fire_department_outlined;
    }
    if (value.contains('cut') || value.contains('bleed')) {
      return Icons.content_cut_outlined;
    }
    if (value.contains('fracture') || value.contains('bone')) {
      return Icons.healing_outlined;
    }
    if (value.contains('head') || value.contains('brain')) {
      return Icons.psychology_outlined;
    }
    if (value.contains('eye')) {
      return Icons.remove_red_eye_outlined;
    }
    if (value.contains('heart') || value.contains('chest')) {
      return Icons.favorite_border;
    }

    return Icons.medical_services_outlined;
  }
}
