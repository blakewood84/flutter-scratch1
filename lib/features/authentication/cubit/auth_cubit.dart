import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({
    required IAuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const AuthState()) {
    phoneInputController.addListener(() {
      // TODO: Add RegExp for this for each country
      if (phoneInputController.text.length < 7) return;
      if (state.phoneCode == "+1" && phoneInputController.text.length == 7) {
        emit(
          state.copyWith(
            canNext: true,
          ),
        );
      }
    });
  }

  final IAuthRepository _authRepository;
  final phoneInputController = TextEditingController();

  void setPhoneCode(String phoneCode) => emit(
        state.copyWith(
          phoneCode: phoneCode,
        ),
      );

  void setPhoneNumber(String phoneNumber) => EasyDebounce.debounce(
        'phone-number',
        const Duration(milliseconds: 400),
        () => emit(
          state.copyWith(
            phoneNumber: phoneNumber,
          ),
        ),
      );
}
