part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    /// Phone number for the user.
    @Default(null) String? phoneNumber,

    /// Phone Code for the region
    @Default('+1') String? phoneCode,

    /// [bool] to allow the Next button to be clicked once phone [RegExp] passes
    @Default(false) bool canNext,

    /// [bool] indicates if the code has been sent from Firebase to the user
    @Default(false) bool codeSent,

    /// [String] - User enters verification code.
    @Default(null) String? verificationCode,
  }) = _AuthState;
}
