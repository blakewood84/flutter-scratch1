part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default('+1') String? phoneNumber,
    @Default(null) String? phoneCode,
  }) = _AuthState;
}
