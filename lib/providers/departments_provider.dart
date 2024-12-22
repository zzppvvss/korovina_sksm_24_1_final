import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:korovina_sksm_24_1/data/departments_available.dart';

final departmentsProvider = Provider((ref) {
  return availableDepartments;
});
