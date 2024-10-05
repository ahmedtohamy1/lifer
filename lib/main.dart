import 'package:flutter/material.dart';
import 'package:lifer/core/di/dependancy_injection.dart';
import 'package:lifer/my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencyInjection();
  runApp(const MyApp());
}
