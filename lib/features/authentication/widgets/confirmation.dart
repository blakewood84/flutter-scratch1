import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scratch_one/features/authentication/cubit/auth_cubit.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({super.key});

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 130,
          child: TextField(
            autofocus: true,
            keyboardType: TextInputType.phone,
            onChanged: (value) async {
              if (value.length == 6) {
                context.read<AuthCubit>().verifyPhoneCode(value);
              }
            },
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
      ],
    );
  }
}
