import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({
    required IAuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const AuthState());

  final IAuthRepository _authRepository;

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
