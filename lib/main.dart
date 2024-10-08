import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lifer/core/di/dependancy_injection.dart';
import 'package:lifer/my_app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

//! TODO: Implement Flavorizer

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://oypakjtfgwtodieqzjur.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im95cGFranRmZ3d0b2RpZXF6anVyIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyODMyMTI2MiwiZXhwIjoyMDQzODk3MjYyfQ.8KO8jVHyaKeoz8O6SAn7wulmksmL871lwbQ3PWlC1qY',
  );
  configureDependencies();

  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

final supabase = Supabase.instance.client;
