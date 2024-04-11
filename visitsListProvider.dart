import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trial/models/visitModel.dart';

class visitsListNotifier extends StateNotifier<List<Visit>> {
  visitsListNotifier()
      : super([
          Visit(
              hospitalName: "hospitalName",
              doctorId: "doctorId",
              doctorName: "doctorName",
              diagnosis: "diagnosis",
              symptoms: "symptoms"),
          Visit(
              hospitalName: "hospitalName",
              doctorId: "doctorId",
              doctorName: "doctorName",
              diagnosis: "diagnosis",
              symptoms: "symptoms")
        ]);
}

final visitListProvider =
    StateNotifierProvider<visitsListNotifier, List<Visit>>(
        (ref) => visitsListNotifier());
