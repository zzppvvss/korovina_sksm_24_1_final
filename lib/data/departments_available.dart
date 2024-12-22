import 'package:flutter/material.dart';
import 'package:korovina_sksm_24_1/models/department.dart';

const availableDepartments = [
  Department(
    id: 'd1',
    name: 'Finance',
    color: Color.fromARGB(255, 73, 133, 118),
    icon: Icons.money,
  ),
  Department(
    id: 'd2',
    name: 'Law',
    color: Color.fromARGB(255, 47, 30, 145),
    icon: Icons.account_balance,
    ),
  Department(
    id: 'd3',
    name: 'IT',
    color: Color.fromARGB(255, 108, 11, 146),
    icon: Icons.computer,
  ),
  Department(
    id: 'd4',
    name: 'Medical',
    color: Color.fromARGB(255, 35, 128, 50),
    icon: Icons.medical_services,
  ),
  ];