import 'package:auth_repository/auth_repository.dart' show IAuthRepository;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocListener, BlocProvider, MultiBlocListener, ReadContext;
import 'package:scratch_one/features/authentication/cubit/auth_cubit.dart' show AuthCubit, AuthState;
import 'package:scratch_one/features/authentication/view/view.dart' show AuthView;
import 'package:scratch_one/features/authentication/widgets/confirmation.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authRepository = context.read<IAuthRepository>();
    return BlocProvider(
      create: (context) => AuthCubit(
        authRepository: authRepository,
      ),
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthCubit, AuthState>(
            listenWhen: (previous, current) => current.codeSent == true,
            listener: (lContext, state) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => BlocProvider.value(
                    value: BlocProvider.of<AuthCubit>(lContext),
                    child: const Confirmation(),
                  ),
                ),
              );
            },
          )
        ],
        child: const AuthView(),
      ),
    );
  }
}
