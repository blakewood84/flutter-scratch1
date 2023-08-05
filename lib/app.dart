import 'package:auth_repository/auth_repository.dart' show IAuthRepository;
import 'package:flutter/material.dart' show StatelessWidget, Widget, BuildContext, MaterialApp, ThemeData;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scratch_one/features/authentication/view/auth_page.dart';
import 'package:scratch_one/features/home/view/view.dart';

class App extends StatelessWidget {
  const App({
    required this.authRepository,
    super.key,
  });

  final IAuthRepository authRepository;

  @override
  Widget build(BuildContext context) {
    final currentUser = authRepository.currentUser;

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<IAuthRepository>(
          create: (_) => authRepository,
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: currentUser != null ? const HomePage() : const AuthPage(),
      ),
    );
  }
}
