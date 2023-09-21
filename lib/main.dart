import 'package:auth_repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart' show Firebase;
import 'package:flutter/material.dart' show WidgetsFlutterBinding, runApp;
import 'package:scratch_one/app.dart' show App;
import 'package:scratch_one/firebase_options.dart' show DefaultFirebaseOptions;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final authRepository = AuthRepository(
    firebaseAuth: FirebaseAuth.instance,
  );

  runApp(App(
    authRepository: authRepository,
  ));
}
