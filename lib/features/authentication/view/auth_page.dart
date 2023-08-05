import 'package:auth_repository/auth_repository.dart' show IAuthRepository;
import 'package:flutter/material.dart' show StatelessWidget, Widget, BuildContext;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider, ReadContext;
import 'package:scratch_one/features/authentication/cubit/auth_cubit.dart' show AuthCubit;
import 'package:scratch_one/features/authentication/view/view.dart' show AuthView;

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authRepository = context.read<IAuthRepository>();
    return BlocProvider(
      create: (context) => AuthCubit(
        authRepository: authRepository,
      ),
      child: const AuthView(),
    );
  }
}
