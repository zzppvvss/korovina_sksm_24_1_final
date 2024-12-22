import 'package:flutter/material.dart';
import 'package:korovina_sksm_24_1/providers/departments_provider.dart';
import 'package:korovina_sksm_24_1/providers/students_provider.dart';
import 'package:korovina_sksm_24_1/widgets/department_grid_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DepartmentsScreen extends ConsumerWidget {
  const DepartmentsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final availableDepartments = ref.watch(departmentsProvider);
    final students = ref.watch(studentsProvider);
    final isLoading = ref.watch(studentsProvider.notifier).isLoading;
    return isLoading
        ? const Center(
            child: CircularProgressIndicator())
        : Scaffold(
            body: GridView(
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              children: [
                for (final department in availableDepartments)
                  DepartmentGridItem(department: department, students: students)
              ],
            ),
          );
  }
}
