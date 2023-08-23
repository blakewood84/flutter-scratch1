import 'dart:developer' as devtools;

import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({
    required IAuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const AuthState()) {
    phoneInputController.addListener(_phoneInputHandler);
    _authRepository.codeSentStream.listen(_codeSentHandler);
  }

  final IAuthRepository _authRepository;
  final phoneInputController = TextEditingController();
  final codeConfirmationController = TextEditingController();

  void _phoneInputHandler() {
    devtools.log('phoneCode: ${state.phoneCode}');
    devtools.log('phoneNumber: ${phoneInputController.text}');
    switch (state.phoneCode) {
      case '+1':
        {
          emit(
            state.copyWith(
              phoneNumber: phoneInputController.text,
              canNext: state.phoneCode == '+1' && phoneInputController.text.length == 10,
            ),
          );
        }
      default:
        {}
    }
  }

  void _codeSentHandler(String? event) {
    devtools.log('event: $event');
    if (event != null) {
      emit(
        state.copyWith(
          codeSent: true,
        ),
      );
    }
  }

  void setPhoneCode(String phoneCode) => emit(
        state.copyWith(
          phoneCode: phoneCode,
        ),
      );

  void verifyPhoneNumber() async {
    if (state.phoneNumber != null) {
      final response = await _authRepository.verifyPhoneNumber(
        '${state.phoneCode}${state.phoneNumber}',
      );
      response.fold(
        (success) => null,
        (error) {
          devtools.log('Cubit: Error verifying phone number.');
          // TODO: Emit Error Screen Dialog
        },
      );
    }
  }

  void verifyPhoneCode(String smsCode) async {
    final response = await _authRepository.verifySmsCode(smsCode);
    response.fold(
      (success) {
        devtools.log('Success! Code Verified');
        emit(
          state.copyWith(
            codeVerified: true,
          ),
        );
      },
      (error) {
        // TODO: Emit Error Screen Dialog
        devtools.log('Cubit: Code was not verified successfully.');
      },
    );
  }
}
