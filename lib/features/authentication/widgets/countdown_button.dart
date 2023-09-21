import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:scratch_one/features/authentication/cubit/auth_cubit.dart';

class CountdownButton extends StatefulWidget {
  const CountdownButton({super.key});

  @override
  State<CountdownButton> createState() => _CountdownButtonState();
}

class _CountdownButtonState extends State<CountdownButton> {
  final _countdownNotifier = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _countdownNotifier,
      builder: (context, isStopped, child) {
        if (!isStopped) {
          return TweenAnimationBuilder(
            tween: Tween(
              begin: const Duration(seconds: 60),
              end: Duration.zero,
            ),
            onEnd: () {
              _countdownNotifier.value = true;
            },
            duration: const Duration(seconds: 60),
            builder: (context, value, Widget? child) {
              final seconds = value.inSeconds;
              return SizedBox(
                width: double.infinity,
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      vertical: 18,
                    ),
                  ),
                  onPressed: null,
                  child: Text(
                    '$seconds seconds',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              );
            },
          );
        }

        return SizedBox(
          width: double.infinity,
          child: FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(
                vertical: 18,
              ),
            ),
            onPressed: () {
              context.read<AuthCubit>().verifyPhoneNumber();
              _countdownNotifier.value = false;
            },
            child: const Text(
              'Resend',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        );
      },
    );
  }
}
