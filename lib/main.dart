import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:scratch_one/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () async {
              try {
                await FirebaseAuth.instance.verifyPhoneNumber(
                  phoneNumber: '+1 530 782 8285',
                  verificationCompleted: (credential) {},
                  verificationFailed: (failed) {
                    print('verification failed!');
                    print(failed.message);
                  },
                  codeSent: (id, resendToken) {
                    print('Code Sent!');
                  },
                  codeAutoRetrievalTimeout: (verificationId) {},
                );
              } on FirebaseAuthException catch (error) {
                print('error: $error');
              }
              print('sent!');
            },
            child: const Text('Send Code'),
          )
        ],
      ),
    );
  }
}
