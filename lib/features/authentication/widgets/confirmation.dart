import 'dart:developer' as devtools;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scratch_one/features/authentication/cubit/auth_cubit.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({super.key});

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  final _countdownNotifier = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    final codeSent = context.read<AuthCubit>().state.codeSent;
    final size = MediaQuery.sizeOf(context);
    devtools.log('Code Sent: $codeSent');
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: BackButton(
          onPressed: () {},
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 130,
              child: TextField(
                autofocus: true,
                keyboardType: TextInputType.phone,
                onChanged: (value) {},
                maxLength: 6,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  counter: const SizedBox.shrink(),
                  isDense: true,
                  hintText: 'SMS Code',
                  hintStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  filled: true,
                  fillColor: const Color(0xff444444).withOpacity(.9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide.none,
                  ),
                  errorStyle: const TextStyle(
                    fontSize: 0,
                    height: 0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ValueListenableBuilder(
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
                      _countdownNotifier.value = false;
                    },
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
