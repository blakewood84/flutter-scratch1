// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  /// Phone number for the user.
  String? get phoneNumber => throw _privateConstructorUsedError;

  /// Phone Code for the region
  String? get phoneCode => throw _privateConstructorUsedError;

  /// [bool] to allow the Next button to be clicked once phone [RegExp] passes
  bool get canNext => throw _privateConstructorUsedError;

  /// [bool] indicates if the code has been sent from Firebase to the user
  bool get codeSent => throw _privateConstructorUsedError;

  /// [String] - User enters verification code.
  String? get verificationCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {String? phoneNumber,
      String? phoneCode,
      bool canNext,
      bool codeSent,
      String? verificationCode});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? phoneCode = freezed,
    Object? canNext = null,
    Object? codeSent = null,
    Object? verificationCode = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneCode: freezed == phoneCode
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String?,
      canNext: null == canNext
          ? _value.canNext
          : canNext // ignore: cast_nullable_to_non_nullable
              as bool,
      codeSent: null == codeSent
          ? _value.codeSent
          : codeSent // ignore: cast_nullable_to_non_nullable
              as bool,
      verificationCode: freezed == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? phoneNumber,
      String? phoneCode,
      bool canNext,
      bool codeSent,
      String? verificationCode});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? phoneCode = freezed,
    Object? canNext = null,
    Object? codeSent = null,
    Object? verificationCode = freezed,
  }) {
    return _then(_$_AuthState(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneCode: freezed == phoneCode
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String?,
      canNext: null == canNext
          ? _value.canNext
          : canNext // ignore: cast_nullable_to_non_nullable
              as bool,
      codeSent: null == codeSent
          ? _value.codeSent
          : codeSent // ignore: cast_nullable_to_non_nullable
              as bool,
      verificationCode: freezed == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {this.phoneNumber = null,
      this.phoneCode = '+1',
      this.canNext = false,
      this.codeSent = false,
      this.verificationCode = null});

  /// Phone number for the user.
  @override
  @JsonKey()
  final String? phoneNumber;

  /// Phone Code for the region
  @override
  @JsonKey()
  final String? phoneCode;

  /// [bool] to allow the Next button to be clicked once phone [RegExp] passes
  @override
  @JsonKey()
  final bool canNext;

  /// [bool] indicates if the code has been sent from Firebase to the user
  @override
  @JsonKey()
  final bool codeSent;

  /// [String] - User enters verification code.
  @override
  @JsonKey()
  final String? verificationCode;

  @override
  String toString() {
    return 'AuthState(phoneNumber: $phoneNumber, phoneCode: $phoneCode, canNext: $canNext, codeSent: $codeSent, verificationCode: $verificationCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.phoneCode, phoneCode) ||
                other.phoneCode == phoneCode) &&
            (identical(other.canNext, canNext) || other.canNext == canNext) &&
            (identical(other.codeSent, codeSent) ||
                other.codeSent == codeSent) &&
            (identical(other.verificationCode, verificationCode) ||
                other.verificationCode == verificationCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, phoneNumber, phoneCode, canNext, codeSent, verificationCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final String? phoneNumber,
      final String? phoneCode,
      final bool canNext,
      final bool codeSent,
      final String? verificationCode}) = _$_AuthState;

  @override

  /// Phone number for the user.
  String? get phoneNumber;
  @override

  /// Phone Code for the region
  String? get phoneCode;
  @override

  /// [bool] to allow the Next button to be clicked once phone [RegExp] passes
  bool get canNext;
  @override

  /// [bool] indicates if the code has been sent from Firebase to the user
  bool get codeSent;
  @override

  /// [String] - User enters verification code.
  String? get verificationCode;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
